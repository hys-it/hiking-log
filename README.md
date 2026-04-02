# Hiking Log

A lightweight project for recording hiking activities in CSV format.

## Structure

- `data/hikes.csv`: hiking records data
- `templates/hike-entry-template.md`: optional markdown template for detailed notes
- `scripts/new-hike.ps1`: append a new hike record
- `scripts/list-hikes.ps1`: print all records

## Quick Start

1. Open PowerShell in this folder.
2. Add a record:

```powershell
.\scripts\new-hike.ps1 -Date 2026-04-02 -Mountain "Mt. Qixing" -DistanceKm 8.5 -ElevationGainM 950 -DurationHrs 4.2 -Notes "Cloudy and windy"
```

3. List records:

```powershell
.\scripts\list-hikes.ps1
```

## CSV Columns

`Date,Mountain,DistanceKm,ElevationGainM,DurationHrs,Notes`
