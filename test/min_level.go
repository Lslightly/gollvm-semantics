//	In gollvm, when level's value reach down to -2, increase() and decrease() function will never make sense and the level's value and suffix value keep to be <-2, 0>.
//	This example test this situation using &(ref) and *(deref)
package main

func main() {
	var t int = 2
	var m map[int]***int = make(map[int]***int, 0)
	var ppa **int
	pc := &t
	ppb := &pc
	pb := *ppb
	a := *pb
	ppa = &pb
	pa := &a
	ppa = &pa
	m[0] = &ppa
}
