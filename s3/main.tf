terraform {
  backend "s3" {
    bucket = "tfstatestore"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
resource "aws_instance" "dummy-instance" {
  # Amazon image
  ami           = "ami-0008a301"
  instance_type = "m1.small"
}

