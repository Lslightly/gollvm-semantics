package main

func main() {
	m := make(map[int]*int, 0)
	ptr := m[2]
	if ptr == nil {
		println("nil ptr")
	}
}
