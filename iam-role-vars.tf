
variable "name" {
  description = "For naming IAM Role"
  default = ""
}

variable "description" {
  description = "(Optional) Description of the role."
  default = "Created by Terraform"
}

variable "force_detach_policies" {
  description = "(Optional) Whether to force detaching any policies the role has before destroying it. Defaults to false."
  default = false
}

variable "inline_policy" {
  description = "(Optional) Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. Defined below. If no blocks are configured, Terraform will ignore any managing any inline policies in this resource. Configuring one empty block (i.e., inline_policy {}) will cause Terraform to remove all inline policies."
  default = null
}

variable "managed_policy_arns" {
  description = "(Optional) Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Terraform will ignore policy attachments to this resource. When configured, Terraform will align the role's managed policy attachments with this set by attaching or detaching managed policies. Configuring an empty set (i.e., managed_policy_arns = []) will cause Terraform to remove all managed policy attachments."
  default = null
}

variable "max_session_duration" {
  description = "(Optional) Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours."
  default = null
}

variable "path" {
  description = "(Optional) Path to the role. See IAM Identifiers for more information."
  default = null
}

variable "permissions_boundary" {
  description = "(Optional) ARN of the policy that is used to set the permissions boundary for the role."
  default = null
}

variable "assume_role_policy" {
  //default = "${file("${path.module}/files/assume-role-policy.json")}"
  default = ""
}

variable "tags" {
  description = "tags"
  default = null
}