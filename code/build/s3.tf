provider "aws" {
  region = "us-west-2"

}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "60c670e0-3e73-452d-a10c-7f2c30e8ef1c"
    git_commit           = "1a5ac62c57491d2200c12bc16c03d16443f71adc"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-11-13 17:23:29"
    git_last_modified_by = "76172087+amisingh2209@users.noreply.github.com"
    git_modifiers        = "76172087+amisingh2209"
    git_org              = "amisingh2209"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
