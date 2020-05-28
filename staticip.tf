resource "aws_lightsail_static_ip" "devops" {
  name = "${var.staticip}"
}

resource "aws_lightsail_static_ip_attachment" "devops" {
  static_ip_name ="${aws_lightsail_static_ip.devops.name}"
  instance_name = "${aws_lightsail_instance.main.name}"
  connection {
    timeout = "5m"
    user = "ubuntu"
    host = "${aws_lightsail_static_ip.devops.ip_address}"
    private_key = "${file("${var.private_key_path}")}"
  }

  #provisioner "file" {
  #  source = "~/.ssh/"
  #  destination = "~/.ssh"
  #}
  #provisioner "remote-exec" {
  #  inline = [
  #    "touch hello",
  #    "sudo apt update -y",
  #    "echo ************************apt update************* >> hello",
  #    #"sudo apt upgrade -y",
  #    #RUN apt install -y less curl git
  #    #"sudo apt update -y && sudo apt-get upgrade -y && sudo apt-get install -y less curl ssh",
  #    #Python Pip
  #    "sudo apt-get install python3 python3-pip -y && sudo ln -s /usr/bin/python3 /usr/bin/python && sudo ln -s /usr/bin/pip3 /usr/bin/pip",
  #  ]
  #}
}

