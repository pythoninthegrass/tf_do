resource "digitalocean_droplet" "www-1" {
  image  = "ubuntu-22-04-x64"
  name   = "www-1"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]

  # provisioner "remote-exec" {
  #   inline = [
  #     "while ! nc -zv ${self.ipv4_address} 22; do sleep 5; done",
  #   ]

  #   connection {
  #     type        = "ssh"
  #     user        = "root"                # replace with your actual username
  #     private_key = file("~/.ssh/id_rsa") # replace with the path to your private key
  #     host        = self.ipv4_address
  #   }
  # }

  provisioner "local-exec" {
    command = "ansible-playbook -i ${self.ipv4_address}, playbook.yml"
  }
}
