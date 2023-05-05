package main

type I interface {
	foo(a *int) int
	bar(int)
}

type J interface {
	foo(a *int) int
}

type S struct{}

func (S) foo(a *int) int { return *a }
func (S) bar(int)        {}

func main() {
	var i I = S{}
	j, ok := i.(J)
	if ok {
		println(j)
	}
}
