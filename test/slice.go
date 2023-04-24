package main

func main() {
	s := make([]*int, 20)
	a := 100
	s[10] = &a
	use_a(a + 5)
	a = *s[10]
	s = append(s, &a)
	s = append(s, &a, &a)
	s = append(s, s...)
	s = s[2:4]
}

func use_a(a int) {
	println(a)
}
