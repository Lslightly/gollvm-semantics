package main

type I interface {
	String()
}

type S struct{}

func (S) String() {}

func main() {
	var eface interface{} = S{}
	var iface I = S{}
	//	e2e2
	a, ok := eface.(interface{})
	if ok {
		println(a)
	}
	//	e2i2
	b, ok := eface.(I)
	if ok {
		println(b)
	}
	// i2e2
	c, ok := iface.(interface{})
	if ok {
		println(c)
	}
	// i2i2
	d, ok := iface.(I)
	if ok {
		println(d)
	}

	// e2t2p
	var efaceptr interface{} = &S{}
	e, ok := efaceptr.(*S)
	if ok {
		println(e)
	}

	// i2t2p
	var ifaceptr I = &S{}
	f, ok := ifaceptr.(*S)
	if ok {
		println(f)
	}

}
