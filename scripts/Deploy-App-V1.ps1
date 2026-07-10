// Deploy-App-V1.ps1

param(
    [Parameter(Mandatory = $true)]
    [ValidateSet('dev', 'qa', 'prod')]
    [string]$Environment,

    [Parameter(Mandatory = $true)]
    [string]$AppName
)

$timestamp = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
$deploymentId = "{0}-{1}-{2}" -f $AppName, $Environment, (Get-Random -Minimum 1000 -Maximum 9999)

Write-Host "Deploying $AppName to $Environment"
Write-Host "DeploymentId: $deploymentId"
Write-Host "StartedAt: $timestamp"

[pscustomobject]@{
    Environment   = $Environment
    AppName       = $AppName
    DeploymentId  = $deploymentId
    StartedAt     = $timestamp
}
