# Pester For Package Manager Console
This little NuGet package allow to easily expose Pester to the Package Manager Console inside Visual Studio

The idea is to be able to use Pester to run unit test for NuGet install PowerShell scripts  
And automate with Pester the idea developed in this [blog article](https://robdmoore.id.au/blog/2013/08/07/test-harness-for-nuget-install-powershell-scripts-init-ps1-install-ps1-uninstall-ps1/)

Once the package is installed you can directly open the Package Manager Console in Visual Studio and simply type `Invoke-Pester` to run all the PowerShell unit tests written inside your solution.

This is possible because each time you open the Package Manager Console, it execute the init.ps1 script provided by this package, which will delete the tests files included in Pester package (to avoid to run them instead of yours), and load the Pester module.

# Remarks
Even if those scripts (init.ps1, install.ps1 and uninstall.ps1) are now deprecated in NuGet environnement, it could always be handy to have such solutions to cover legacy packages.