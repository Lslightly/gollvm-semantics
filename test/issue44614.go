package main

var global interface{}

func f(p *int) (r *int) {
	global = &r
	return p
}

func main() {
	a := 1
	f(&a)
}
