variable "domain" {
  description = "The domain to use as a base"
}

variable "name" {
  description = "The name of the component to build a domain for"
}

variable "env" {
  description = "The environment this component is running in"
}

variable "target" {
  description = "Where the DNS should send traffic"
}

variable "ttl" {
  description = "The TTL for the dns record"
  default     = 60
}

variable "alias" {
  description = "Create an alias rather than a CNAME"
  default     = "0"
}

variable "alb_zone_id" {
  description = "The Route53 zone id of the ALB to create an alias for"
  default     = ""
}


