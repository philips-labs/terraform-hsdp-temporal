variable "instance_type" {
  description = "The instance type to use"
  type        = string
  default     = "t2.medium"
}

variable "volume_size" {
  description = "The volume size to use in GB"
  type        = number
  default     = 50
}

variable "user_groups" {
  description = "User groups to assign to cluster"
  type        = list(string)
}

variable "user" {
  description = "LDAP user to use for connections"
  type        = string
}

variable "bastion_host" {
  description = "Bastion host to use for SSH connections"
  type        = string
}

variable "private_key" {
  description = "Private key for SSH access (should not have a passphrase)"
  type        = string
}

variable "org_name" {
  description = "Cloudfoundry ORG name to use for reverse proxy"
  type        = string
}

variable "app_domain" {
  description = "The app domain to use"
  type        = string
}

variable "temporal_image" {
  description = "The Temporal server image to use"
  type        = string
  default     = "temporalio/auto-setup:1.4.1"
}

variable "temporal_admin_tools_image" {
  description = "The Temporal admin tools image to use"
  type        = string
  default     = "temporalio/admin-tools:1.4.1"
}

variable "temporal_web_image" {
  description = "The Temporal web image to use"
  type        = string
  default     = "temporalio/web:1.4.0"
}

variable "agent_image" {
  description = "Agent image"
  type        = string
  default     = "loafoe/ch-agent:0.0.58"
}

variable "autoscaler_image" {
  description = "Autoscaler image"
  type        = string
  default     = "loafoe/ch-autoscaler:0.0.16"
}

variable "fluent_bit_image" {
  description = "Fluent-bit image"
  type        = string
  default     = "philipssoftware/fluent-bit-out-hsdp:latest"
}

variable "postgres_plan" {
  description = "The HSDP-RDS PostgreSQL plan to use"
  type        = string
  default     = "postgres-medium-dev"
}

variable "workers" {
  description = "Number of worker nodes to spin up"
  type        = number
  default     = 1
}

variable "worker_instance_type" {
  description = "Instance type of worker nodes"
  type        = string
  default     = "m5.xlarge"
}

variable "hsdp_ingestor_host" {
  description = "HSDP Logging ingestor host"
  type        = string
  default     = "https://logingestor2-client-test.us-east.philips-healthsuite.com"
}

variable "hsdp_shared_key" {
  description = "HSDP Logging shared key"
  type        = string
  default     = ""
}

variable "hsdp_secret_key" {
  description = "HSDP Logging secret key"
  type        = string
  default     = ""
}

variable "hsdp_product_key" {
  description = "HSDP Logging product key"
  type        = string
  default     = ""
}

variable "hsdp_custom_field" {
  description = "Post structured JSON message to HSDP Logging custom field"
  type        = string
  default     = "true"
}

variable "hsdp_region" {
  description = "The HSDP region of the deployment"
  type        = string
  default     = "us-east"
}

variable "cartel_token" {
  description = "The Cartel token to use for autoscaling"
  type        = string
  default     = ""
}

variable "cartel_secret" {
  description = "The Cartel secret to use for autoscaling"
  type        = string
  default     = ""
}
