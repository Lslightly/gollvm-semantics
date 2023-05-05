package main

type I interface {
	foo(a *int)
}
type S struct{}

var sink interface{}

func (S) foo(a *int) {
	sink = a
}

func main() {
	var i I = S{}
	Test(i)
}

//go:noinline
func Test(i I) {
	var b int = 2
	i.foo(&b)
}
