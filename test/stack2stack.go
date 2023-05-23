package main

func main() {
	var a *int
	c := 1
	a = &c
	f(&a)
}

//go:noinline
func f(a **int) {
	var b int
	*a = &b // 错误的分析算法导致在main函数中的栈对象a引用了被调者中的栈对象b，违反不变式
}
