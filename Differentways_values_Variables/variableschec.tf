resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
    #vpc_security_group_ids = [aws_security_group.web_sg.id] 

  tags = {

    Name= "variables"
  }
  
#map data should be capital then only it is considering
}