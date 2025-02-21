# The variable "example_list" has a default value that is a list (collection of strings).
variable "example_list" {
    type    = list(string)
    default = ["item1", "item2", "item3"]
}

# The variable "example_map" has a default value that is a map (collection of key-value pairs).
variable "example_map" {
    type    = map(string)
    default = {
        key1 = "value1"
        key2 = "value2"
        key3 = "value3"
    }
}