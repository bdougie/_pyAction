workflow "Check for GIPHT on Push" {
  on = "issue_comment"
  resolves = "GIPHT"
}

action "GIPHT" {
  uses = "bdougie/faint-pull@master"
  secrets = ["GITHUB_TOKEN"]
}
