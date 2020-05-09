#infinite loop  
cd c:\exp
$wt = 500
Write-Host -ForegroundColor Yellow "	Measurement interval: " $wt
Write-Host -ForegroundColor Yellow "	############################"

for(($x = 1); $x -le 6; $x++)
{
Write-Host -ForegroundColor Yellow "	Initializing measurement " $x

# opens a new tab with simet web (measurements start automatically and data is displayed on screen)
Start-Process -FilePath msedge -ArgumentList https://beta.simet.nic.br

#the application below simulates the simet web to compose the collection time
#.\speedtest.exe
Write-Host -ForegroundColor Yellow "	Finalizing measurement " $x
start-sleep -seconds 120

#the application below takes a screenshot of the two screens whith the data (meet, simet and NetBalancer windows) and names the output file with date and time
.\nircmd.exe savescreenshotfull img\screen0$x$(get-date -f yyyy.MM.dd-hh-mm).png

Write-Host -ForegroundColor Yellow "	Please, wait  " $wt " seconds..."
Write-Host -ForegroundColor Yellow "	."
Write-Host -ForegroundColor Yellow "	.."
Write-Host -ForegroundColor Yellow "	..."

start-sleep -seconds $wt

}
