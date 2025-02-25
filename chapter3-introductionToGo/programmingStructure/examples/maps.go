package main

import (
	"fmt"
) 

func main() {
	m := make(map[string]int) //creates empty map
	m["k1"] = 7 // add values to the map
	m["k2"] = 13 // add values to the map
	fmt.Println("map:", m)
	v1 := m["k1"]
	fmt.Println("v1: ", v1)
	fmt.Println("len:", len(m))
	delete(m, "k2") // delete elements from the maps
	fmt.Println("map:", m)
}