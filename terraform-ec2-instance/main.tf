resource "aws_instance" "example" {
  ami                      = var.ami_id
  instance_type            = var.instance_type
  key_name                 = var.key_name
  #security_groups         = var.security_group_ids            # Attach security group
  #subnet_id               = var.subnet_id                     # Specify subnet
  #availability_zone       = var.availability_zone             # Specify AZ
  #iam_instance_profile    = var.iam_instance_profile          # Attach IAM role
  #user_data               = file("init_script.sh")            # Path to shell script
  #monitoring              = true                              # Enable detailed monitoring
  #disable_api_termination = true                              # Prevent instance termination via API
  tags = {
    Name = var.instance_name
  }
}
