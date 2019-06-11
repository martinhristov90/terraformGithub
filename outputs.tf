output "testRepoGitURL" {
  value = "${github_repository.testRepo.git_clone_url}"
}
