#To Run - Invoke-Pester .\New-ResourceGroup_test.ps1

Describe New-ResourceGroup {
    $location = 'eastus'
    $name = 'CashewsCloudSkills'

    it "Name should be CashewsCloudSkills" {
        $name | Should Be 'CashewsCloudSkills'
    }

    it "location should be eastus" {
        $location | Should Be 'eastus'
    }
}