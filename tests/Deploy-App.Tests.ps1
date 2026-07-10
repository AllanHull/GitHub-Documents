Describe 'Deploy-App.ps1' {
    It 'returns deployment metadata for a valid environment' {
        $result = & "$PSScriptRoot/../scripts/Deploy-App.ps1" -Environment dev -AppName 'sample-app'

        $result.Environment | Should -Be 'dev'
        $result.AppName | Should -Be 'sample-app'
        $result.DeploymentId | Should -Match '^sample-app-dev-\d{4}$'
        $result.StartedAt | Should -Not -BeNullOrEmpty
    }
}
