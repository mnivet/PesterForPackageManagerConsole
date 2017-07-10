param($installPath, $toolsPath, $package)

#Remove all tests files from the package to avoid to run them when running Invoke-Pester without any argument
#Then load the pester module so it can be used directly from the NuGet Console Manager
$pesterPath = (Get-Item "$installPath\..\Pester.*\tools")[-1].FullName
Remove-Item $pesterPath -Include "*.Tests.ps1" -Recurse
Import-Module "$pesterPath\Pester.psm1"