# HOM
HomeOffice Mettings traffic data measurements

# Description

A simple PowerShell script to support the automation of the process of capturing traffic data screens from popular meeting applications during a period of intensive use in home office due to the covid-19 pandemic.

# Dataset
This script will capture screens from meetings held with researchers from the Informatics Center at UFPE.

# Requirements

- Microsoft Windows OS with PowerShell support
- "hom" folder from this repository must have been copied to the path c:\exp on your local PC's disk
- Copy the directory with its files (loop.ps1, nircmd.exe) and subfolder (empty img folder)

# Exectution sequence

- Opens a new tab with simet web (measurements start automatically and data is displayed on screen)
- Wait an estimated fixed time for running the simet web
- takes a screenshot of the full screen whith the data and names the output file with date and time
- After a known interval (seconds), perform a pre-established number of repetitions


# Variables defined in the loop.ps1 file

$DataPath = The directory path | Default value: "c:\exp"
$Iterations = Number of repetitions | Default value: 9
$IntervalTime = Total time between measurements | Default value: 620 (seconds)
$SimetTime = Estimated duration of simet measurement in the browser | Default value: 120 (seconds)
$Browser = Browser to be used to open the simet page and the measurement | Default value: "msedge"
