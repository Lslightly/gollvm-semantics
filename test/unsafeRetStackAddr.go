package main

import "unsafe"

var global interface{}

func main() {
	println(f())
}

func f() uintptr {
	a := 1                           // 栈分配
	b := uintptr(unsafe.Pointer(&a)) //	将栈对象的地址通过unsafe.Pointer返回
	return b
}
