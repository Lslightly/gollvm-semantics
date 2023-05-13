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

func excludeRegexMatch(lines []string, regex string) (res []string) {
	res = make([]string, 0, len(lines))
	re := regexp.MustCompile("(?m)" + regex)
	for _, line := range lines {
		if !re.MatchString(line) {
			res = append(res, line)
		}
	}
	return res
}

type ModuleASMDeletor struct{}

func (ModuleASMDeletor) run(content string) string {
	lines := strings.Split(content, "\n")
	return strings.Join(excludeRegexMatch(lines, "^module asm .*"), "\n")
}

type LabelPrefixTrimer struct{}

func (LabelPrefixTrimer) run(content string) string {
	lines := strings.Split(content, "\n")
	res := make([]string, 0, len(lines))
	for _, line := range lines {
		tmp := trimLabelStringPrefix(line)
		tmp = phiTrimLabel(tmp)
		res = append(res, tmp)
	}
	return strings.Join(res, "\n")
}

func trimLabelStringPrefix(line string) string {
	label_re := regexp.MustCompile("label %(\\S+?)(\\s|$)")
	tmp := line
	for label_re.MatchString(tmp) {
		tmp = label_re.ReplaceAllString(tmp, "label $1$2")
	}
	return tmp
}

func phiTrimLabel(line string) string {
	if strings.Contains(line, "phi") {
		label_re := regexp.MustCompile("\\[(.*?),(.*?)\\%(.*?)\\]")
		return label_re.ReplaceAllString(line, "[$1,$2$3]")
	}
	return line
}

type AttributeDeleter struct{}

func (AttributeDeleter) run(content string) string {
	lines := strings.Split(content, "\n")
	return strings.Join(excludeRegexMatch(lines, "^attributes.*"), "\n")
}

type MetaDataDefineDeleter struct{}

func (MetaDataDefineDeleter) run(content string) string {
	lines := strings.Split(content, "\n")
	return strings.Join(excludeRegexMatch(lines, "^!\\d+.*"), "\n")
}

type EqualFuncDeleter struct{}

func (EqualFuncDeleter) run(content string) string {
	lines := strings.Split(content, "\n")
	ranges := findAllEqualFunc(lines)
	return strings.Join(removeRanges(lines, ranges), "\n")
}

// Range is [startLine, endLine)
type Range struct {
	startLine int
	endLine   int
}

// remove ranges in lines
// if ranges = [s1, e1) [s2, e2) then res is [0, s1) [e1, s2)
func removeRanges(lines []string, ranges []Range) (res []string) {
	res = make([]string, 0, len(lines)/2)
	len_ranges := len(ranges)
	if len_ranges == 0 {
		return lines
	}
	res = append(res, lines[0:ranges[0].startLine]...)
	for i, _ := range ranges {
		if i == len(ranges)-1 {
			break
		}
		res = append(res, lines[ranges[i].endLine:ranges[i+1].startLine]...)
	}
	res = append(res, lines[ranges[len_ranges-1].endLine:]...)
	return res
}

func findAllEqualFunc(lines []string) (res []Range) {
	res = make([]Range, 0, len(lines)/10)
	isEqualNow := false
	var tmpRange Range
	startFuncRe := regexp.MustCompile("define.*?@.*?\\.\\.eq.*")
	endFuncRe := regexp.MustCompile("^\\}.*")
	for i, line := range lines {
		if !isEqualNow && startFuncRe.MatchString(line) {
			isEqualNow = true
			tmpRange.startLine = i
		}
		if isEqualNow && endFuncRe.MatchString(line) {
			isEqualNow = false
			tmpRange.endLine = i + 1
			res = append(res, tmpRange)
		}
	}
	return res
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
	mgr.addPass(LabelPrefixTrimer{})
	mgr.addPass(AttributeDeleter{})
	mgr.addPass(MetaDataDefineDeleter{})
	mgr.addPass(EqualFuncDeleter{})
	mgr.runAll(&content)
	writeResult(content, "preprocessed."+file)
}

func writeResult(content string, file string) {
	f, err := os.Create(file)
	if err != nil {
		log.Fatal(err)
	}
	defer f.Close()
	fmt.Fprintln(f, content)
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
