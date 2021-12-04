resource "aws_autoscaling_group" "auto_scaling_group" {
  tags                = [
    {
      key                 = "Name"
      value               = var.instance_name
      propagate_at_launch = true
    },
    {
      key                 = "ManagedBy"
      value               = var.instance_managed_by
      propagate_at_launch = true
    }
  ]
  max_size            = var.size_max
  min_size            = var.size_min
  name                = var.name
  vpc_zone_identifier = var.subnet_ids
#  key
}
