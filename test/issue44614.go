package main

var global interface{}

func f(p *int) (r *int) {
	global = &r //	由于错误的分析算法导致r对象没有被堆分配，而是进行了栈分配，在栈回收之后global为野指针，在GC阶段会触发panic
	return p
}

func main() {
	a := 1
	f(&a)
}
