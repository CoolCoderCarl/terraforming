module "aws_dynamodb_table" {
  source = "terraform-aws-modules/dynamodb-table/aws"

  name      = var.database_name
  hash_key  = var.hash_key
  range_key = var.range_key


  attributes = [{
    name = var.hash_key
    type = "S"
    },
    {
      name = var.range_key
      type = "S"
    }
  ]

  tags = {
    Terraform   = "true"
    Environment = "testing"
  }
}

