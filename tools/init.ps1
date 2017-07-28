param($installPath, $toolsPath, $package)

#Just load the pester module so it can be used directly from the NuGet Console Manager
$pesterPath = (Get-Item "$installPath\..\Pester.*\tools")[-1].FullName
Import-Module "$pesterPath\Pester.psm1"