#------------------------------------------------------------------------------
# Misc
#------------------------------------------------------------------------------
variable "name_prefix" {
  type        = string
  description = "Name prefix for resources on AWS"
}

#------------------------------------------------------------------------------
# AWS REGION
#------------------------------------------------------------------------------
variable "region" {
  type        = string
  description = "AWS Region the infrastructure is hosted in"
}

#------------------------------------------------------------------------------
# AWS Networking
#------------------------------------------------------------------------------
variable "vpc_id" {
  type        = string
  description = "ID of the VPC"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of Availability Zones"
}

variable "public_subnets_ids" {
  type        = list(string)
  description = "List of Public Subnets IDs"
}

variable "private_subnets_ids" {
  type        = list(string)
  description = "List of Private Subnets IDs"
}

variable "db_instance_size" {
  type        = string
  default     = "db.r4.large"
  description = "DB instance size"
}

variable "db_name" {
  type        = string
  default     = "sonar"
  description = "Default DB name"
}

variable "db_username" {
  type        = string
  default     = "sonar"
  description = "Default DB username"
}

variable "db_password" {
  type        = string
  default     = ""
  description = "DB password"
}

#------------------------------------------------------------------------------
# AWS RDS settings
#------------------------------------------------------------------------------
variable "db_engine_version" {
  type        = string
  default     = "11.7"
  description = "DB engine version"
}

#------------------------------------------------------------------------------
# Sonarqube image version
#------------------------------------------------------------------------------
variable "sonarqube_image" {
  description = "Sonarqube image"
  type        = string
  default     = "sonarqube:lts"
}


#------------------------------------------------------------------------------
# AWS LOAD BALANCER - Target Groups
#------------------------------------------------------------------------------
variable "ssl_policy" {
  description = "(Optional) The name of the SSL Policy for the listener. . Required if var.https_ports is set."
  type        = string
  default     = null
}

variable "default_certificate_arn" {
  description = "(Optional) The ARN of the default SSL server certificate. Required if var.https_ports is set."
  type        = string
  default     = null
}

variable "additional_certificates_arn_for_https_listeners" {
  description = "(Optional) List of SSL server certificate ARNs for HTTPS listener. Use it if you need to set additional certificates besides default_certificate_arn"
  type        = list(any)
  default     = []
}
