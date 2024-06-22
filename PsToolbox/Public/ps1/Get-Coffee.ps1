function Get-Coffee {

    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, Position = 0)]
        [ValidateSet('Regular', 'Vainilla')]
        [String]$CoffeeType
    )
    begin {}
    process {
        try {
            $confirmation = Get-CoffeeTime -CoffeeType $CoffeeType
            Write-Host $confirmation -ForegroundColor Green
        }
        catch {
            Write-Host $_ -ForegroundColor Red
        }
    }
    end {
    }
}