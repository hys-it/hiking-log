param(
    [Parameter(Mandatory = $true)]
    [DateTime]$Date,

    [Parameter(Mandatory = $true)]
    [string]$Mountain,

    [Parameter(Mandatory = $true)]
    [double]$DistanceKm,

    [Parameter(Mandatory = $true)]
    [int]$ElevationGainM,

    [Parameter(Mandatory = $true)]
    [double]$DurationHrs,

    [string]$Notes = ""
)

$csvPath = Join-Path $PSScriptRoot "..\data\hikes.csv"

if (-not (Test-Path $csvPath)) {
    "Date,Mountain,DistanceKm,ElevationGainM,DurationHrs,Notes" | Set-Content -Path $csvPath -Encoding UTF8
}

$safeNotes = $Notes -replace '"', '""'
$line = "{0},{1},{2},{3},{4},`"{5}`"" -f $Date.ToString("yyyy-MM-dd"), $Mountain, $DistanceKm, $ElevationGainM, $DurationHrs, $safeNotes
Add-Content -Path $csvPath -Value $line -Encoding UTF8

Write-Host "Added hike record to $csvPath"
