$csvPath = Join-Path $PSScriptRoot "..\data\hikes.csv"

if (-not (Test-Path $csvPath)) {
    Write-Error "No records found. Expected file: $csvPath"
    exit 1
}

Import-Csv -Path $csvPath | Format-Table -AutoSize
