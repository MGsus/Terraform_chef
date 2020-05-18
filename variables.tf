variable "ibmcloud_api_key" {
   description = "Enter your IBM Cloud API Key, you can get your IBM Cloud API key using: https://console.bluemix.net/iam#/apikeys"
}

variable "os_reference" {
  default = "UBUNTU_18_64"
}

variable "datacenter" {
  default = "dal10"
}
