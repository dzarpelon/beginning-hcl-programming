package main

import (
	"fmt"
)

type math_function interface {
	addition() int
	subtraction() int
}

type numbers struct {
	n1,n2 int
}

func (v numbers)addition() int {
	return v.n1 + v.n2
}

func (v numbers)subtraction() int {
	return v.n1 - v.n2
}

func operations(n math_function) {
	fmt.Println(n)
	fmt.Println(n.addition())
	fmt.Println(n.subtraction())
}

func main() {
	v := numbers{n1: 4, n2: 6}
	operations(v)
}