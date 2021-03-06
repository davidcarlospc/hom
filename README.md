# HOM
HomeOffice Mettings traffic data measurements

# Description

A simple PowerShell script to support the automation of the process of capturing traffic data screens from popular meeting applications during a period of intensive use in home office due to the covid-19 pandemic.

# Dataset
This script will capture screens from meetings held with researchers from the Informatics Center at UFPE.

# Requirements

- Microsoft Windows OS with PowerShell support
- "hom-master" folder from this repository must have been copied to your disk
- Open the folder and check the files (loop.ps1, nircmd.exe)
- To display network traffic data by process, we recommend and use the NetBalancer tool (https://netbalancer.com/download)
- Run the script

# Exectution sequence

- Opens a new tab with simet web (measurements start automatically and data is displayed on screen)
- Wait an estimated fixed time for running the simet web
- Takes a screenshot of the full screen whith the data and names the output file with date and time
- Performs a pre-established number of repetitions, according to a known interval in seconds


# Defined variables (in loop.ps1)

- $DataPath = The directory path | Default value: The current folder path
- $Iterations = Number of repetitions | Default value: 9
- $IntervalTime = Total time between measurements | Default value: 620 (seconds)
- $SimetTime = Estimated duration of simet measurement in the browser | Default value: 120 (seconds)
- $Browser = Browser to be used to open the simet page and the measurement | Default value: "msedge".
