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

### Program structure

#### Naming conventions

- A name must begin with a letter or an underscore
- The name continues with letters, numbers or underscores
- Go is case sensitive

#### Variables

basic syntax is ```var <name><type> = <value``` like in the examples below:

```
var s string
var maximum strong
var number int
```
- Go is able to determine the type of variable (string, bool and so on). So no need to declare those.

#### Pointers

A pointer is the address of the memory used to store the value of a variable or is the address of the variable.

With pointers we can change the value of a variable without directly assigning it to the variable.

Pointers work directly on the memory assigned to the variable.

Example:

```

```



