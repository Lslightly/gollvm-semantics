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
	*a = &b
}
