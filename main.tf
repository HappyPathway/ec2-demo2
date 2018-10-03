variable "instance_name" {}
variable "instance_type" {}
variable "key_name" {}

module "ec2_instance" {
  source  = "app.terraform.io/Darnold-TFE-Demos/ec2-instance/aws"
  version = "2.1.0"

  instance_name = "${var.instance_name}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
}
