package main

import "unsafe"

func wf() uintptr {
	return f()
}

func wg() *int {
	return g()
}

func f() uintptr {
	a := new(int)
	pa := unsafe.Pointer(a)
	p := uintptr(pa)
	*ptr() = a
	return p
}

func ptr() **int {
	b := 1
	pb := &b
	ppb := &pb
	return ppb
}

func g() *int {
	a := new(int)
	return a
}

func main() {
	wf()
	wg()
	f()
	g()
}
