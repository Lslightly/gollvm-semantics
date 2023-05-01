package main

type I interface {
	String() string
}

type S struct {
	a int
}

func (s S) String() string {
	return ""
}

func main() {
	s := S{
		a: 100,
	}
	var eface interface{} = s
	x, ok := eface.(S)
	if ok {
		println(x.String())
	}
	var iface I = s
	y, ok := iface.(S)
	if ok {
		println(y.String())
	}
}
