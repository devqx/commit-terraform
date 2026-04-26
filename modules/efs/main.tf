terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0.0"
    }
  }
}
resource "aws_efs_file_system" "efs" {
  availability_zone_name = var.efs_availability_zone_name
  performance_mode = var.efs_performance_mode
  throughput_mode = var.efs_throughput_mode
  encrypted = true
}


resource "aws_efs_mount_target" "efs_mount_target" {
  file_system_id = aws_efs_file_system.efs.id
  subnet_id = var.subnet_id
  security_groups = [var.node_security_group_id]
}