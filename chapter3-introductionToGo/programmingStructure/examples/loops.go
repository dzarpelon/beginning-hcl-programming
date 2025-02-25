// only the for statement is supported in go
package main

import (
	"fmt"
)
func main() {
	// run until clause is hit
	c := 1
	for c <= 3 {
		fmt.Println(c)
		c= c+1
	}

	//check and increment the for statement
	for j := 5; j <= 8; j++ {
		fmt.Println(j)
	}

	// infinite loop, we need to make sure we have a break condition or it will run forever
	for {
		fmt.Println("loop")
		break
	}
}