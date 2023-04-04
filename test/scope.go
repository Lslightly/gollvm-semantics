package main

func main() {
	var p *int
	{
		a := 1
		p = &a
	}
	println(*p)
}
