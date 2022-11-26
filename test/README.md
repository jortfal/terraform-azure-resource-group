# testing wioth Terratest

https://terratest.gruntwork.io/


# To configure dependencies

```bash
cd test
go mod init github.com/jortfal/terraform-azure-resource-group
```

# To add module requirements and sums

```bash
go mod tidy
```

# To run the tests:

```bash
cd test
az login
az account set --subscription "estrategia tecnologica"
go test -v -timeout 30m
```

# Go Outline

Simple utility for extracting a JSON representation of the declarations in a Go source file.

[Go Outline](https://github.com/ramya-rao-a/go-outline)

```bash
go install -v github.com/ramya-rao-a/go-outline@latest" to install
```
