resource "aws_instance" "web" {
//Name="web"
key_name ="demodec151" 
ami = "ami-04893cdb768d0f9ee"
instance_type = "t2.micro"
subnet_id = "subnet-0b70062a666d6c75d"
tags ={

name="demo_terraform "
created_by="abhishek Nilam "
updated_by="abhishek  d nilam"
created_at_date="march 22"


}

security_groups = [  aws_security_group.demo_allow_http.id ]

user_data =<<-EOF
              #!/bin/bash
                yum update -y
                yum install -y httpd
                systemctl start httpd.service
                systemctl enable httpd.service
                echo "Welcome to Terraform Demo!!!, I am $(hostname -f) hosted by Terraform" > /var/www/html/index.html
              EOF
}
