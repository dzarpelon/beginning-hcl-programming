package main

import (
	"fmt"
)

func main() {
	var first_array [3]int // defines an integer array of 3 elements
	var second [3]string // defines an string array of 3 elements
	fmt.Println(first_array[0]) // access first array on it's 0 position 
	fmt.Println(first_array[2]) // access first array on it's 2 position 
	fmt.Println(second[0]) // access second array on it's 0 position
	fmt.Println(second[2]) // access second array on it's 2 position
	//read the array
	for i := 0; i <= len(first_array)-1; i++ {
		fmt.Println(first_array[i])
	}
}