package main

// add a " _ " prefix for packages that we will import for later use. This technique is used so it doesn't raise an exception.
// when we want to use the library, we NEED to remove the prefix. Otherwise an exception "missing import" will be raised.
import (
	"fmt"
	_ "os"
)

func main() {
	fmt.Println("Hello World!")
}