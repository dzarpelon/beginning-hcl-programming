package main

import (
	"fmt"
)

func main() {
	n := make([]int, 3)
	n[0] = 1
	fmt.Println(len(n))
	n = append(n, 4)
	fmt.Println(len(n))
}