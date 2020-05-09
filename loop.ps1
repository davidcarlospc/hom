#Powershell script to assist the automation process of simet web data collection and other information on screen

# Settings
$DataPath = "c:\exp"
$Iterations = 9
$IntervalTime = 620
$SimetTime = 120
$RemainTime = $IntervalTime - $SimetTime
$Browser = "msedge"
cd $DataPath

#Initial messages and definitions view:
Write-Host -ForegroundColor white "	Powershell Script Settings (loop.ps1):"
Write-Host -ForegroundColor gray "	#####################################################"
Write-Host -ForegroundColor gray "	Measurement interval: " $IntervalTime " seconds"
Write-Host -ForegroundColor gray "	Number of iterations: " $Iterations
Write-Host -ForegroundColor gray "	Simet runtime: " $SimetTime " seconds"
Write-Host -ForegroundColor gray "	Browser: " $Browser
Write-Host -ForegroundColor gray "	Directory path: " $DataPath
Write-Host -ForegroundColor gray "	#####################################################"

#Loop start
for(($x = 1); $x -le $Iterations; $x++)
{
Write-Host -ForegroundColor white "	################################"
Write-Host -ForegroundColor white "	Initializing measurement " $x
Write-Host -ForegroundColor white "	################################"

# opens a new tab with simet web (measurements start automatically and data is displayed on screen)
Write-Host -ForegroundColor Yellow "	Opening the simet web in a new tab in the browser..."
Start-Process -FilePath $Browser -ArgumentList https://beta.simet.nic.br 

# option 1 - the application below simulates the simet web to last the same collection time
#.\speedtest.exe
# option 2 - wait an estimated fixed time for running the simet web
Write-Host -ForegroundColor Yellow "	Running measurement "$x"...please, check your screen organization for the next screenshot in" $SimetTime "seconds"
start-sleep -seconds $SimetTime

#the application below takes a screenshot of the two screens whith the data (meet, simet and NetBalancer windows) and names the output file with date and time
Write-Host -ForegroundColor Yellow "	Saving the screenshot " $x
.\nircmd.exe savescreenshotfull img\$(get-date -f yyyy.MM.dd-hh_mm)-scr0$x.png
# Final iteration Message
Write-Host -ForegroundColor Yellow "	Another " $RemainTime " seconds until the next measurement..."
Write-Host -ForegroundColor Yellow "	."
Write-Host -ForegroundColor Yellow "	.."
Write-Host -ForegroundColor Yellow "	..."
start-sleep -seconds $RemainTime
}