terraform {
 required_providers {
  aws = {
   source = "hashicorp/aws"
  }
 }
}

resource "aws_eks_cluster" "roadrunner-proxy" {
 name = "${var.cluster_name}"
 role_arn = "${var.aws_eks_cluster}"

 vpc_config {
   subnet_ids = [var.subnet_id_1, var.subnet_id_2]
 }
}


resource "aws_eks_node_group" "worker-node-group" {
  cluster_name  = "${var.cluster_name}"
  node_group_name = "${var.cluster_name}-groups"
  node_role_arn  = "${var.aws_eks_node_group}"
  subnet_ids = [var.subnet_id_1, var.subnet_id_2]
  instance_types = "${var.instance_types}"
  
 
  scaling_config {

   desired_size = 1
   max_size   = 10
   min_size   = 1
  }
 
  depends_on = [
    aws_eks_cluster.roadrunner-proxy
  ]
 }
 

