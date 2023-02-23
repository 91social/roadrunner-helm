variable "subnets" {
  type = list(string)
  default = ["subnet-1","subnet-2"]
 }
variable "subnet_id_1" {
  type = string   
  default = "subnet-1"
 }

variable "subnet_id_2" {
  type = string   
  default = "subnet-2"
 }

variable "aws_vpc" {
  default = "vpc-default"
 }

variable "cluster_name" {
  description = "cluster name defined here" 
  default = "roadrunner-cluster"
}

variable "availability_zone" {
  default = "ap-south-1"
}




variable "availability_zones" {  #az for an redis
  type = list(string)
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}

variable "zone_id" {   #zone_id for the  creating route53
  type = string
  default = "ap-south-1"
}

variable "kubernetes_version" {   #k8s version can be changed
  default = "1.24"
}



variable "instance_types" {   # eks-cluster instance type
  type = list(string)
  description = "pci recommended below instance type as a default"
  default = ["c5a.xlarge"]
}


variable "aws_eks_cluster" {           # iam role for  creating eks-cluster
  description = "eks-cluster-role"
  default = "arn:aws:iam::1234567890:role/eks-cluster-role"
}

variable "aws_eks_node_group" {  # iam role for  creating  eks-node-group
  description = "eks-nodegroup-role"
  default = "arn:aws:iam::1234567890:role/eks-nodegroup-role" 
}

# variable "copy_tags_to_snapshot" {  #RDS
#   type = bool
#   default = true
# }

# variable "skip_final_snapshot" {  #RDS
#   type = bool
#   default = true 
# }