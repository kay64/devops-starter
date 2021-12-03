#module "security_group_control_plane" {
#  source      = "../../resources/aws/security_group_empty"
#  description = "Security Group to connect control plane with working nodes."
#  name        = "${data.aws_vpc.current.tags["Name"]}-control-plane"
#  vpc_id      = data.aws_vpc.current.id
#}
