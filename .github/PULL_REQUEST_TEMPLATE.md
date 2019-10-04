#### Summary
<!-- Describe the change, including rationale and design decisions (not just what but also why) -->

#### Dependencies
<!-- Describe the dependencies the change has on other repositories, pull requests etc. -->

#### Testing instructions
<!-- Describe how the change can be tested, e.g., steps and tools to use -->

#### Checklist for pull request creator
<!-- Check that the necessary steps have been done before the PR is created -->

- [ ] A task has been created for the PR on the Kanban board with necessary details filled (one task / repo)
- [ ] The commits and commit messages adhere to [version control conventions](https://voltti.atlassian.net/wiki/spaces/NUORA/pages/32999/Versionhallintak+yt+nn+t#Versionhallintak%C3%A4yt%C3%A4nn%C3%B6t-Commit-viestienmuotoilu)
- [ ] The API's adhere to the [REST API conventions](https://voltti.atlassian.net/wiki/spaces/VOLTTI/pages/46170144/REST-rajapintak+yt+nn+t)
- [ ] The code is consistent with the existing code base
- [ ] Tests have been written for the change (use case, repository, REST API)
- [ ] All tests pass
- [ ] All code has been linted and there aren't any lint errors
- [ ] The change has been tested locally, e.g., with httpie
- [ ] The code is self-documenting or has been documented sufficiently, e.g., in the README
- [ ] The branch has been rebased against master before the PR was created

#### Checklist for pull request reviewer (copy to review text box)
<!-- Check that the necessary steps have been done in the review. Copy the template beneath for the review. -->

```
- [ ] A task has been created for the PR on the Kanban board with necessary details filled (one task / repo)
- [ ] The commits and commit messages adhere to [version control conventions](https://voltti.atlassian.net/wiki/spaces/NUORA/pages/32999/Versionhallintak+yt+nn+t#Versionhallintak%C3%A4yt%C3%A4nn%C3%B6t-Commit-viestienmuotoilu)
- [ ] The API's adhere to the [REST API conventions](https://voltti.atlassian.net/wiki/spaces/VOLTTI/pages/46170144/REST-rajapintak+yt+nn+t)
- [ ] The code is consistent with the existing code base
- [ ] All changes in all changed files have been reviewed
- [ ] Tests have been written for the change (use case, repository, REST API)
- [ ] All tests pass
- [ ] All code has been linted and there aren't any lint errors
- [ ] The change has been tested locally, e.g., with httpie
- [ ] The code is self-documenting or has been documented sufficiently, e.g., in the README
- [ ] The PR branch has been rebased against master and force pushed if necessary before merging
```