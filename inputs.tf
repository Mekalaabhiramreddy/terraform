variable "region" {
  type    = string
  default = "us-east-1"
}

variable "vpc-range-abhi" {
  type    = string
  default = "192.168.0.0/16"
}

variable "app1-cidr" {
  type    = string
  default = "192.168.0.0/24"
}

variable "app2-cidr" {
  type    = string
  default = "192.168.1.0/24"
}

variable "web1-cidr" {
  type    = string
  default = "192.168.2.0/24"
}

variable "web2-cidr" {
  type    = string
  default = "192.168.3.0/24"
}