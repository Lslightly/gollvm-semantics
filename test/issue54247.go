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
	var obj1 obj
	defer Recover(
		&obj1,
	)
	task()
}

//go:noinline
func Recover(objs ...*obj) {
	println(objs[0].id)
}
