resource "null_resource" "ansible" {
  provisioner "local-exec" {
    command = " cd ../ansible && /bin/bash script.sh"
  }
  depends_on = [
    module.rgroup-n01619861,
    module.datadisk-n01619861,
    module.vmlinux-n01619861
  ]
}
