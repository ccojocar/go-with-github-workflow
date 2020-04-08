# go-with-github-workflow

A go project which uses a GitHub workflow to run the tests. Also uses a GitHub action to run the gosec security scanner.


## Relese 

The `[release](.github/workflows/release.yml)` can be trigger as follows:

```
go tag v1.0.0 -m "Initial Release"
git push origin v1.0.0
```
