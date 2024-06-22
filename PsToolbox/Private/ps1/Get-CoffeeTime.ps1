function Get-CoffeeTime {

    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateSet('Regular', 'Vainilla')]
        [String]$CoffeeType
    )
    
    begin {
        $currentDateTime = Get-Date
        $regularCoffeeHours = 4..20
        $vainillaCoffeeHours = 0..3 + 21..23
    }
    process {
        if ($CoffeeType -eq 'Regular') {
            if ($currentDateTime.Hour -in $regularCoffeeHours) {
                $result = $true
            }
            else {
                $result = $false
            }
        }
        else {
            if ($currentDateTime.Hour -in $vainillaCoffeeHours) {
                $result = $true
            }
            else {
                $result = $false
            }
        }
    }
    end {
        if ($result -eq $true) {
            return "Enjoy your cup of $CoffeeType coffee!"
        }
        else {
            throw "You may not drink $CoffeeType right now!"
        }
    }

}