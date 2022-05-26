variable cloud_id {
  description = "Cloud"
}
variable folder_id {
  description = "Folder"
}
variable zone {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable app_zone {
  description = "app zone"
  default     = "ru-central1-a"
}
variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access"
  default     = "~/.ssh/appuser.pub"
}
variable image_id {
  description = "Disk image"
}
variable subnet_id {
  description = "Subnet"
  default     = "e9bf3cej41r9n97c21ts"
}
variable service_account_key_file {
  description = "key.json"
  default     = "../../key.json"

}
variable private_key {
  description = "path to private key"
  default     = "~/.ssh/appuser"
}

variable vm_count {
  description = "count of vms"
  default = 1
}
