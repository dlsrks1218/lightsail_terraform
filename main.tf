# Create a new AWS Key Pair for Lightsail
resource "aws_lightsail_key_pair" "deployer" {
  name       = "terraform"
  public_key = "${file("${var.public_key_path}")}"
}

# Create a new Terrraform Lightsail Instance
resource "aws_lightsail_instance" "main" {
  name              = "${var.prefix}-main"
  availability_zone = "${var.availability_zone}"
  blueprint_id      = "${var.blueprint_id}"
  bundle_id         = "${var.bundle_id}"
  key_pair_name     = "${aws_lightsail_key_pair.deployer.name}"
  user_data         = "${data.template_file.init_script.rendered}"
}
