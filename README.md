# PowerShell DevOps Sample

This repository is a simple starter project for building and validating PowerShell-based DevOps workflows.

## What is included

- A sample deployment script in [scripts/Deploy-App.ps1](scripts/Deploy-App.ps1)
- A basic Pester test in [tests/Deploy-App.Tests.ps1](tests/Deploy-App.Tests.ps1)
- A GitHub Actions workflow in [.github/workflows/powershell-ci.yml](.github/workflows/powershell-ci.yml)

## Prerequisites

- PowerShell 7+
- Optional: Pester for local test execution

## Usage

Run the deployment sample:

```powershell
pwsh -File ./scripts/Deploy-App.ps1 -Environment dev -AppName sample-app
```

Run the tests locally:

```powershell
Invoke-Pester -Path ./tests
```

## Directories

- scripts
- tests

