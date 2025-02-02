provider "aws" {
  region = "us-west-2"
}

module "basic_example" {
  source                 = "../../"
  repo_name              = "slalom-devops"
  organization_name      = "slalom"
  repo_default_branch    = "master"
  aws_region             = "us-west-2"
  char_delimiter         = "-"
  environment            = "dev"
  build_timeout          = "5"
  build_compute_type     = "BUILD_GENERAL1_SMALL"
  build_image            = "aws/codebuild/nodejs:6.3.1"
  package_buildspec      = "buildspec.yml"
  force_artifact_destroy = true
}
