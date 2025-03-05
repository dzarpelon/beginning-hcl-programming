variable "ip_range" {
  description = "The IP range we want to create for our VPC"
  type = string
  default = "20.0.0.0/16" // used if no other specific value is set either manually (-var flag) or via autovars file
}