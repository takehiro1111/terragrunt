resource "aws_instance" "test2" {
  ami = "ami-0dafcef159a1fc745"
  instance_type = "t2.micro"
}