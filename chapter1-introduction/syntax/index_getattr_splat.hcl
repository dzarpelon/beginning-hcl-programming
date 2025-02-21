    # index example - Retrieves the second element from the list (zero-based index)
    output "index_example" {
        value = index(var.example_list, 1)
    }

    # getattr example - Retrieves the value associated with the key "key1" from the map
    output "getattr_example" {
        value = var.example_map["key1"]
    }

    # Attribute only splat example - Retrieves the names of all instances of the example_resource
    output "splat_example" {
        value = example_resource.example[*].name
    }

    # Full splat example - Retrieves all attributes of all instances of the example_resource
    output "full_splat_example" {
        value = [for instance in example_resource.example : instance]
    }

