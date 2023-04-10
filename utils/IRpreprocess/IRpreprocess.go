package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"path"
	"regexp"
	"strings"
)

type PassMgr struct {
	passes []ContentProcessor
}

func newPassMgr() *PassMgr {
	mgr := new(PassMgr)
	mgr.passes = make([]ContentProcessor, 0)
	return mgr
}

func (this *PassMgr) addPass(pass ContentProcessor) {
	this.passes = append(this.passes, pass)
}

func (this *PassMgr) runAll(content *string) {
	for _, pass := range this.passes {
		*content = pass.run(*content)
	}
}

type ContentProcessor interface {
	run(content string) string
}

type CommentDeleter struct{}

func (CommentDeleter) run(content string) string {
	lines := strings.Split(content, "\n")
	res := make([]string, 0, len(lines))
	for _, line := range lines {
		quotes := findAllQuotePair(line)
		nocomment := line
		for idx := 0; idx < len(line); idx++ {
			subline := line[idx:]
			subidx := strings.IndexRune(subline, ';')
			if subidx == -1 {
				break
			}
			idx += subidx
			if !surroundedByQuotes(idx, quotes) {
				nocomment = line[:idx]
				break
			}
		}
		resultLineNoSpace := strings.TrimSpace(nocomment)
		originLineNoSpace := strings.TrimSpace(line)
		if !(resultLineNoSpace == "" && originLineNoSpace != "") {
			res = append(res, nocomment)
		}
	}
	return strings.Join(res, "\n")
}

type QuotePair struct {
	start int
	end   int
}

func (this QuotePair) surround(idx int) bool {
	return this.start < idx && idx < this.end
}

func findAllQuotePair(line string) []QuotePair {
	res := make([]QuotePair, 0)
	paired := true
	currPair := QuotePair{}
	for idx := 0; idx < len(line); idx++ {
		subline := line[idx:]
		subidx := strings.IndexRune(subline, '"')
		if subidx == -1 {
			break
		}
		idx += subidx
		if paired {
			if idx == 0 {
				currPair.start = 0
				paired = false
			} else if line[idx-1] != '\\' {
				currPair.start = idx
				paired = false
			}
		} else {
			if line[idx-1] != '\\' {
				currPair.end = idx
				paired = true
				res = append(res, currPair)
			}
		}
	}
	if !paired {
		log.Fatal("double quote is not paired in", line)
		return nil
	} else {
		return res
	}
}

func surroundedByQuotes(idx int, quotes []QuotePair) bool {
	for _, pair := range quotes {
		if pair.surround(idx) {
			return true
		}
	}
	return false
}

type ModuleASMDeletor struct{}

func (ModuleASMDeletor) run(content string) string {
	lines := strings.Split(content, "\n")
	res := make([]string, 0, len(lines))
	for _, line := range lines {
		re := regexp.MustCompile("module asm .*")
		if !re.MatchString(line) {
			res = append(res, line)
		}
	}
	return strings.Join(res, "\n")
}

func init() {
	flag.Usage = Usage
}

func Usage() {
	fmt.Print(
		`this tool can preprocess LLVM IR, including delete Comments, Delete certain sections`)
}

func main() {
	flag.Parse()
	if flag.NArg() != 1 {
		fmt.Println("currently this tool can only deal with one file")
	}
	file := flag.Arg(0)
	content := readContent(file)
	mgr := newPassMgr()
	mgr.addPass(ModuleASMDeletor{})
	mgr.addPass(CommentDeleter{})
	mgr.runAll(&content)
	fmt.Println(content)
}

func readContent(file string) string {
	cwd, _ := os.Getwd()
	p := path.Join(cwd, file)
	if _, err := os.Stat(p); err != nil {
		if !os.IsExist(err) {
			log.Fatalln(p, "does not exist\ncurrent dir", cwd)
			return ""
		} else {
			log.Fatal(err)
			return ""
		}
	} else {
		buf, err := os.ReadFile(p)
		if err != nil {
			log.Fatal(err, "read file failed")
		}
		return string(buf)
	}
}
