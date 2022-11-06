/*
module "ec2" {
  source = "../../module/ec2"
  instance_type = "t2.micro"
  sg = [module.sg.sgid]
}

module "sg" {
  source = "../../module/sg"
  port = "22"
}

*/

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-09d3b3274b6c5d4aa"
  instance_type          = "t2.micro"
 # key_name               = "user1"
  monitoring             = true
  
  subnet_id              = "subnet-0aa569c0f3a8c78b4"

}
