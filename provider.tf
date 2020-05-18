variable "iaas_classic_username" { default = "jesus.orlando.montoya.mejia" }
variable "iaas_classic_api_key" { default = "033f1bcba0d98642b002be6206130d6f30771b76572202809b9f21f42d23030f" }
variable "ibmcloud_api_key" { default = "HzyWpiWzA595Pca7WgdMiSgaLBwH3h16QaMfC8x6JvQ0" }

provider "ibm" {
  iaas_classic_username = var.iaas_classic_username
  iaas_classic_api_key  = var.iaas_classic_api_key
  ibmcloud_api_key	= var.ibmcloud_api_key
}