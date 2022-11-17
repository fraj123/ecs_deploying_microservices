data "aws_iam_role" "elasticloadbalancing-role" {
  name = "AWSServiceRoleForElasticLoadBalancing"
}

data "aws_iam_role" "ecs-role" {
  name = "AWSServiceRoleForECS"
}

resource "aws_iam_service_linked_role" "elasticloadbalancing" {
  count = "${data.aws_iam_role.elasticloadbalancing-role != "null" ? 0 : 1}"
  aws_service_name = "elasticloadbalancing.amazonaws.com"
}

resource "aws_iam_service_linked_role" "ecs" {
  count = "${data.aws_iam_role.ecs-role != "null" ? 0 : 1}"
  aws_service_name = "ecs.amazonaws.com"
}

