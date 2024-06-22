function Get-GitStatusRecursive {

    [CmdletBinding()]
    param (
    )
    begin {
    }
    process {
        try {
            $currentLocation = Get-Location

            $folders = Get-ChildItem . | Where-Object{$_.PSISContainer}
            foreach ($folder in $folders){
                Write-Output $folder.Name
                Set-Location $folder.FullName;
                git s
                git cherry -v
            }

            Set-Location $currentLocation

            Write-Host "Finish!" -ForegroundColor Green
        }
        catch {
            Write-Host $_ -ForegroundColor Red
        }
    }
    end {
    }
}