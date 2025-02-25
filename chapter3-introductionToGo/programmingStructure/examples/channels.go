/* Channels are used to synchronize the communication across the goroutine.
If no operator is specified, the channel is bidirectional
To specify a direction we use <-

A channel can be of two types:
 - buffered: have a maximum size of elements
 - unbuffered: no maximum size
*/

package main

import (
	"fmt"
)

 func main() {
	new_channel := make(chan string) // define the new channel using make. It's created as a string "chan"

	go func() {new_channel <- "ping"}() //create function that use the cannel and assign value "ping" to it

	msg := <- new_channel //variable is populated with the value  of the channel. Note that "-<" is placed AFTER the declaration of the channel. Meaning the value is sent to the channel.
	fmt.Println((msg))
 }
