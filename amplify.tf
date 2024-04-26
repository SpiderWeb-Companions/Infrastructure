variable "github_token" {}

resource "aws_amplify_app" "amplify_app" {
  name       = "SpiderWeb"
  repository = "https://github.com/SpiderWeb-Companions/Frontend"
  oauth_token = var.github_token
}
resource "aws_amplify_branch" "amplify_branch" {
  app_id      = aws_amplify_app.amplify_app.id
  branch_name = "main"
}