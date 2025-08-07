variable "name" {
  description = "Target group name"
  type        = string
}

variable "port" {
  description = "Target group port"
  type        = number
  default     = 80
}

variable "protocol" {
  description = "Target group protocol"
  type        = string
  default     = "HTTP"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "target_type" {
  description = "Target group type"
  type        = string
  default     = "instance"
}

variable "health_check_interval" {
  description = "Health check interval"
  type        = number
}

variable "health_check_path" {
  description = "Health check path"
  type        = string
}

variable "healthy_threshold" {
  description = "Threshold for considering a target as healthy"
  type        = number
}

variable "unhealthy_threshold" {
  description = "Threshold for considering a target as unhealthy"
  type        = number
}

variable "tags" {
  description = "Tags"
  type        = map(string)
}
