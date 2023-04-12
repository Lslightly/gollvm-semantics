package main

func main() {
	s := make([]int, 1, 20)
	s[0] = 2
	s = append(s, 14)
	println(s[1])
}
