// Selects characters based on the rules of the function
package main

import (
	"fmt"
)

func main() {
	s := "Hello HCL"
	fmt.Println(s[3:]) // from char 3 to the end
	fmt.Println(s[:5]) // from start char to char 5
	fmt.Println(s[3:4]) // from char 3 to char 4
}