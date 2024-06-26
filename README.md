# notes-powershell

- [Resumen](https://learn.microsoft.com/en-us/powershell/scripting/overview)
- [Instalación](https://learn.microsoft.com/es-es/powershell/scripting/install/installing-powershell-on-windows)

## Módulo en PowerShell

- <https://benheater.com/creating-a-powershell-module/>
- <https://learn.microsoft.com/en-us/powershell/scripting/developer/module/understanding-a-windows-powershell-module>

```powershell
#remove module
Remove-Module PsToolbox
#import module
Import-Module C:\Source\notes-powershell\PsToolbox\PsToolbox.psd1
#get commands in module
Get-Command -Module PsToolbox
#test example
Get-Coffee Regular
Get-Coffee Vainilla
```
