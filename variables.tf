variable "aws_region" {
  type        = string
  description = "AWS 리전 코드입니다.(기본값: ap-northeast-2)"
  default     = "ap-northeast-2"
  validation {
    condition     = contains(["ap-south-1"], var.aws_region)
    error_message = "사용 가능한 리전은 뭄바이, ap-south-1 입니다."
  }
}

variable "aws_access_key" {
  type        = string
  description = "AWS CLI ACCESS KEY 입니다."
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  description = "AWS CLI SECRET KEY 입니다."
  sensitive   = true
}
