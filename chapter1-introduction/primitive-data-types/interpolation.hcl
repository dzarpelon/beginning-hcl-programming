# HCL can use interpolation syntax (called Hashicorp Interpolating Language - HIL).
# HIL is used to interpolate strings on HCL code and uses the syntax ${...}

// this will interpolate the value of variable "world" as a string on the variable 'test'
test = "Hello ${var.world}"

// this is a HIL function 
test = "${func("Hello", ${hello.var})}"