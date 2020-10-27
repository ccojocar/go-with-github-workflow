# go-with-github-workflow

A Go project which uses a GitHub workflow to run the tests and release on new tag to master branch. 

In addition, it uses a GitHub action to run the gosec security scanner.

## Relese 

The [release](.github/workflows/release.yml) can be triggered as follows:
```
go tag v1.0.0 -m "Initial Release"
git push origin v1.0.0
```

