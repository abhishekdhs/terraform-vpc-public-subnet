variable "ports" {
  type = map(object({
    port       = number
    protocol   = string
    cidr_block = list(string)
  }))

  default = {
    "22" = {
      port       = 22
      protocol   = "tcp"
      cidr_block = ["0.0.0.0/0"]
    }
    "80" = {
      port       = 80
      protocol   = "tcp"
      cidr_block = ["0.0.0.0/0"]
    }
    "6443" = {
      port       = 6443
      protocol   = "tcp"
      cidr_block = ["0.0.0.0/0"]
    }
    "2379" = {
      port       = 2379
      protocol   = "tcp"
      cidr_block = ["0.0.0.0/0"]
    }
  }
}