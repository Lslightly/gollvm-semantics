package main

type I interface {
	foo(*int) int
}
type S struct{}

func (S) foo(a *int) int { return *a }
func main() {
	Test(S{})
}
func Test(i I) {
	s, ok := i.(S)
	a := 2
	if ok {
		println(s.foo(&a))
	}
}
