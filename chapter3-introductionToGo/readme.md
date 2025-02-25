## Go
Go is a programming language designed for simplicity and efficiency.
Many HashiCorp tools, such as Terraform, Vault, and Consul, are written in Go. However, not all of our tools are exclusively written in Go.

### Advantages of Go 
- Has garbage collection, so no need for memory management by the dev.
- Does not have a preprocessor. So it compiles faster.
- Static linking by default. Which means the program is compiled for a specific OS but can be move to another OS of the same family without modification.
- With Go we can write from simple scripts to complex programs.

### Two rules of Go

- Import only the packages that will be used. (if a non used package is imported, the program will raise an exception)
- The bracket must stay after the name of the function