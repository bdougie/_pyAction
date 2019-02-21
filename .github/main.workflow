workflow "Check for GIPHT on issue_comment" {
  on = "issue_comment"
  resolves = "GIPHT"
}

action "GIPHT" {
  uses = "bdougie/faint-pull@master"
  secrets = [
    "GITHUB_TOKEN",
    "GIPHY_KEY",
  ]
}
