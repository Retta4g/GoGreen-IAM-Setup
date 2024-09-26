provider "aws" {
  region = "us-west-2" # Change to your preferred region
}

provider "aws" {
  alias  = "account"
  region = "us-west-2" # Same region for account-specific operations
}

provider "aws" {
  alias  = "mfa"
  region = "us-west-2" # Same region for MFA-specific operations
}
