# Week 2 Scripting Like A Developer

The code found in this folder of the repository is a result of the week 2 projects from the CloudSkills series Cloud Native DevOps Bootcamp.

## PowerShell

The PowerShell code (in the `powershell` folder) can be used to create a new resource group in Azure. Parameters to pass in are the Resource Group name and Location.

All code and tests can be found in the `powershell` folder.

### Examples - PowerShell

Using the function in New-ResourceGroup.ps1

```PowerShell
New-ResourceGroup -rgName '' -location ''
```

### Testing - PowerShell

Linting - linting.ps1
Unit Tests - `Invoke-Pester .\New-ResourceGroup_test.ps1`

## Python

The Python code will create a new s3 bucket in AWS. Parameter to pass in is the bucket name.

All code and tests can be found in the `python` folder.

### Examples

```Python
python s3bucket.py 'yourbucketname'
```

### Testing - Python

Linting - `pylint ./s3bucket.py`
Unit Tests - `python s3bucket_test.py`

## Contributors

1. Susan Bell (cashewshideout)
