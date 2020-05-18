
resource "ibm_compute_vm_instance" "chef-server" {
  hostname             = "chef"
  domain               = "ibm.cloud-landingzone.com"
  os_reference_code    = "${var.os_reference}"
  datacenter           = "${var.datacenter}"
  network_speed        = 100
  hourly_billing       = true
  private_network_only = false
  cores                = 1
  memory               = 1024
  disks                = [25]
  local_disk           = false

  provisioner "remote-exec" {
    inline = [
      "wget -O /tmp/chef.rpm https://MYSERVER/chef_installers/chef-15.8.23-1.el7.x86_64.rpm",
      "rpm -Uvh /tmp/chef.rpm",
      "wget -O /tmp/base.tgz https://MYSERVER/policyfiles/base.tgz",
      "tar -C /tmp -xzf /tmp/base.tgz",
      "PWD=/tmp/base chef-client -z",
    ]
  }
}
