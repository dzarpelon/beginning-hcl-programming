# using a string form. Calls a template file called 'hcl_book.tpl'
data "template_file" "Initialize Consul address" {
    template = "${file("${path.module}/hcl_book.tpl")}"
    vars = {
        consul_address = "${aws_instance.consul.private_ip}"
    }
}

# the code above calls the file, which is written like this:

#!/bin/bash
echo "CONSUL_ADDRESS = ${consul_address}" > /tmp/iplist

# What the above does is to read the CONSUL_ADDRESS configured on the system and write in the file iplist

# another way of writing this would be:

user_data = <<- EOT
    echo "CONSUL_ADDRESS = ${aws_instance.consul.private_ip}" > /tmp/iplist
    EOT
    