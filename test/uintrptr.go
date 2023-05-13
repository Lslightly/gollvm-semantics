package main

import (
	"fmt"
	"runtime"
	"unsafe"
)

func main() {
	heap()
	stack()
}

// const path1 = "heapdump1"
// const path2 = "heapdump2"

func heap() {
	uintptr_a := g()
	fmt.Printf("0x%x\n", uintptr_a)
	pa := (*int)(unsafe.Pointer(uintptr_a))
	*pa = 2
	println(pa)
	println(*pa)
}

func g() uintptr {
	p := f()
	// f, _ := os.OpenFile(path1, os.O_CREATE|os.O_RDWR, 0700)
	// WriteHeapDump可以用于记录堆的情况
	// debug.WriteHeapDump(f.Fd())
	runtime.GC()
	runtime.GC()
	// f2, _ := os.OpenFile(path2, os.O_CREATE|os.O_RDWR, 0700)
	// debug.WriteHeapDump(f2.Fd())
	// f.Close()
	// f2.Close()
	return p
}

//go:noinline
func f() uintptr {
	a := new(int)
	*ptr() = a
	runtime.SetFinalizer(a, func(o *int) {
		fmt.Printf("%x is being garbage collected\n", o)
	})
	pa := unsafe.Pointer(a)
	p := uintptr(pa)
	return p
}

func stack() {
	uintptr_a := foo()
	fmt.Printf("0x%x\n", uintptr_a)
	pa := (*int)(unsafe.Pointer(uintptr_a))
	*pa = 2
	println(pa)
	println(*pa)
}

//go:noinline
func foo() uintptr {
	a := 1
	pa := unsafe.Pointer(&a)
	p := uintptr(pa)
	println(&a)
	return p
}

func ptr() **int {
	b := 1
	pb := &b
	return &pb
}
