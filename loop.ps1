#Powershell script to assist the automation process of simet web data collection and other information on screen
# dp = directory path; ni = number of iterations; it = interval time; st = simet time; rt = remainig time 

# Settings
$DataPath = "c:\exp"
$Iterations = 10
$IntervalTime = 620
$SimetTime = 120
$RemainTime = $IntervalTime - $SimetTime
$Browser = "msedge"
cd $DataPath

#Initial messages
Write-Host -ForegroundColor Yellow "	Measurement interval (in seconds): " $IntervalTime
Write-Host -ForegroundColor Yellow "	#####################################################"

#Loop start
for(($x = 1); $x -le $Iterations; $x++)
{
Write-Host -ForegroundColor Yellow "	Initializing measurement " $x

# opens a new tab with simet web (measurements start automatically and data is displayed on screen)
Write-Host -ForegroundColor Yellow "	Opening the simet web in a new tab in the browser "
Start-Process -FilePath $Browser -ArgumentList https://beta.simet.nic.br 

# option 1 - the application below simulates the simet web to last the same collection time
#.\speedtest.exe
# option 2 - wait an estimated fixed time for running the simet web
Write-Host -ForegroundColor Yellow "	Running measurement...check your screen organization "
start-sleep -seconds $SimetTime

#the application below takes a screenshot of the two screens whith the data (meet, simet and NetBalancer windows) and names the output file with date and time
Write-Host -ForegroundColor Yellow "	Saving the screenshot " $x
.\nircmd.exe savescreenshotfull img\screen0$x$(get-date -f yyyy.MM.dd-hh-mm).png
# Final iteration Message
Write-Host -ForegroundColor Yellow "	Please, wait  " $RemainTime " seconds..."
Write-Host -ForegroundColor Yellow "	."
Write-Host -ForegroundColor Yellow "	.."
Write-Host -ForegroundColor Yellow "	..."
start-sleep -seconds $RemainTime
}