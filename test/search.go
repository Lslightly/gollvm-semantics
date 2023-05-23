package main

var global interface{}

func main() {
	a := 1
	if input() {
		global = &a
	} else {
		println(a)
	}
}

func input() bool
