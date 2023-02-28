resource "aws_security_group" "shared_library" {

    name = "shared_library"
    description = "Creating new security group"
    vpc_id = "vpc-00f2f62c4e5f00f79"

    ingress {
        description      = "Allowing the traffic through ssh inly"
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
    }
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    tags = {
    Name = "SharedLibrary"
  }

}