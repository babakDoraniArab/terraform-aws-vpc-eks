################################
# Role and attachments
################################

resource "aws_iam_role" "node_general" {
  name = "eks-node-group-general"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

}



resource "aws_iam_role_policy_attachment" "amazon_eks_worker_node_policy_general" {
  role       = aws_iam_role.node_general.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}


resource "aws_iam_role_policy_attachment" "amazon_eks_cni_policy_general" {
  role       = aws_iam_role.node_general.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}


resource "aws_iam_role_policy_attachment" "amazon_ec2_container_registry_read_only" {
  role       = aws_iam_role.node_general.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

################################
# Eks node group
################################
resource "aws_eks_node_group" "node_general" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "node-general"
  node_role_arn   = aws_iam_role.node_general.arn
  subnet_ids      = [aws_subnet.private_1.id, aws_subnet.private_2.id]

  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }

  ami_type = "AL2_x86_64"
  #SPOT and ON_DEMAND are valid
  capacity_type = "ON_DEMAND"
  #disk size for worker node 
  disk_size            = 20
  force_update_version = false
  instance_types       = ["t3.small"]
  labels = {
    role = "nodes-general"
  }
  #   #kubernetes version

  #   version = "1.8"


  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.amazon_eks_worker_node_policy_general,
    aws_iam_role_policy_attachment.amazon_eks_cni_policy_general,
    aws_iam_role_policy_attachment.amazon_ec2_container_registry_read_only,
  ]
}