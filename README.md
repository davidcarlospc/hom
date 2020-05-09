# HOM
HomeOffice Mettings traffic data measurements

# Description
A simple PowerShell script to support the automation of the process of capturing traffic data screens from popular meeting applications in a period of intense homeoffice due to the covid-19 pandemic.

# Dataset
This script will capture screens from meetings held with researchers from the Center of Informatics (UFPE).

# Requirements

- Microsoft Windows OS with PowerShell support
- "hom" folder form this repository must have been copied to the path c:\exp on your local PC's disk
- Check if the downloaded folder contains the "img" subfolder (images will be saved here)

# Exectution sequence

- Opens a new tab with simet web (measurements start automatically and data is displayed on screen)
- Wait an estimated fixed time for running the simet web
- takes a screenshot of the full screen whith the data and names the output file with date and time
- After a known interval (seconds), perform a pre-established number of repetitions


