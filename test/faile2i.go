package main

type I interface {
	String()
}
type S struct{}

func main() {
	var eface interface{} = S{}
	x, ok := eface.(I)
	if ok {
		println(x)
	}
}
