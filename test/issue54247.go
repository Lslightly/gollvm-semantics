package main

type obj struct {
	id int
}

func main() {
	fn := func() {
		println(1)
	}
	Escape(fn)
}

func Escape(task func()) {
	var obj1 obj //	obj1仍然分配在栈上
	obj1.id = 2
	defer Recover( //	逃逸分析误将可变参数数组逃逸到堆上，存在堆指向栈的情况。如果关闭逃逸分析，该函数会转化为deferproc函数调用，其参数arg指向的对象必须逃逸到堆上。
		&obj1,
	)
	task()
}

//go:noinline
func Recover(objs ...*obj) {
	println(objs[0].id)
}
