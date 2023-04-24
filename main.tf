# create test instance 
resource "aws_instance" "test" {
    ami = "ami-05afd67c4a44cc983"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.subnet1.id
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.Mysec_grp.id]
    key_name = aws_key_pair.mykey.key_name
    tags = {
      "Name" = "test"
    }
}
