# About Tool : This tool setups my computer and installs all my programs and sets it up how i like it, feel free to take a look
# Last Edit : 8/11/2023 8:06PM
# Script By : ThatPowerShellGuy

# Clears PowerShell Before Script Launches To Keep The Terminal Clean
Clear-Host

Write-Output "==========================="
Write-Output "Application Install Process"
Write-Output "==========================="

# Lines 6 through 10: Application Install Process Using WinGet
$InstallPrograms = "Notepad++.Notepad++","GitHub.GitHubDesktop","Valve.Steam","Google.Chrome","ShareX.ShareX","Microsoft.VisualStudioCode","Windows Calculator","7zip.7zip","GIMP.GIMP","OBSProject.OBSStudio","Microsoft.PowerShell"

    foreach ($InstallPrograms in $InstallPrograms) {
        winget install $InstallPrograms --accept-source-agreements --accept-package-agreements --silent 
    }
    
    # Leaving A Space
    Write-Output ""

    Write-Output "==========================="
    Write-Output "         UI Tweaks         "
    Write-Output "==========================="

# Hide Task View Button From Taskbar
Write-Output "Hiding Task View Button From Taskbar"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Type DWord -Value 0

# Hide Search Box From Taskbar
Write-Output "Hiding Search Box From Taskbar"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Type DWord -Value 0

# Hide Chat Icon From Taskbar
Write-Output "Hiding Chat Icon From Taskbar"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarMn" -Type DWord -Value 0

# Move Task Bar To Left
Write-Output "Moving Taskbar To Left"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAl" -Type DWord -Value 0

# Show File Extensions
Write-Output "Showing File Extensions"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0

# Change Explorer View to This PC
Write-Output "Changing File Explorer View To This PC From Quick Access"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1



Write-Output "=========================="
Write-Output "    Debloating Windows    "
Write-Output "=========================="

$Bloatware = @(

*BingNews*
"Microsoft.549981C3F5F10" # This aka Line 58 is Cortana
*BingWeather*
*ZuneMusic*
*ZuneVideo*
*MicrosoftOfficeHub*
*WindowsMaps*
*GetHelp*
*WindowsSoundRecorder*
*Paint*
*MicrosoftStickyNotes*
*PowerAutomateDesktop*
*WindowsFeedbackHub*
*Todos*
*WindowsCalculator*
*WindowsAlarms*
*Teams*
*YourPhone*
*ScreenSketch*
*MicrosoftSolitaireCollection*
*Windows.Photos*
*OneDriveSync*
*SkypeApp*
"Microsoft.3DBuilder" 
"Microsoft.BingFinance" 
"Microsoft.BingSports" 
"Microsoft.Getstarted"  
"Microsoft.Office.OneNote" 
"Microsoft.WindowsCamera" 
"microsoft.windowscommunicationsapps"   
"Microsoft.WindowsMaps" 
"Microsoft.WindowsPhone"  
"Microsoft.WindowsSoundRecorder"  
"Microsoft.XboxApp" 
"Microsoft.ZuneMusic" 
"Microsoft.ZuneVideo" 
"Microsoft.AppConnector" 
"Microsoft.ConnectivityStore" 
"Microsoft.Office.Sway" 
"Microsoft.Messaging"  
"Microsoft.CommsPhone"  
"9E2F88E3.Twitter" 
"king.com.CandyCrushSodaSaga"
"Microsoft.WindowsFeedbackHub" 
"Microsoft.Wallet" 
"Microsoft.ScreenSketch" 
"Microsoft.GetHelp" 
"Microsoft.Xbox.TCUI" 
"Microsoft.XboxGameOverlay" 
"Microsoft.XboxSpeechToTextOverlay" 
"Microsoft.MixedReality.Portal" 
"Microsoft.MinecraftUWP" 
"Microsoft.NetworkSpeedTest" 
"Microsoft.Print3D"
"2FE3CB00.PicsArt-PhotoStudio"
"46928bounde.EclipseManager"
"4DF9E0F8.Netflix"
"613EBCEA.PolarrPhotoEditorAcademicEdition" 
"6Wunderkinder.Wunderlist" 
"7EE7776C.LinkedInforWindows" 
"89006A2E.AutodeskSketchBook" 
"9E2F88E3.Twitter" 
"A278AB0D.DisneyMagicKingdoms" 
"A278AB0D.MarchofEmpires"
"ActiproSoftwareLLC.562882FEEB491" 
"CAF9E577.Plex" 
"ClearChannelRadioDigital.iHeartRadio" 
"D52A8D61.FarmVille2CountryEscape" 
"D5EA27B7.Duolingo-LearnLanguagesforFree" 
"DB6EA5DB.CyberLinkMediaSuiteEssentials" 
"DolbyLaboratories.DolbyAccess" 
"DolbyLaboratories.DolbyAccess" 
"Drawboard.DrawboardPDF" 
"Facebook.Facebook"
"Microsoft.Xbox.TCUI" 
"Microsoft.XboxApp" 
"Microsoft.XboxGameOverlay" 
"Microsoft.XboxGamingOverlay" 
"Microsoft.XboxSpeechToTextOverlay" 
*Xbox* 
*xboxapp* 
"Microsoft.GamingServices" 
"Microsoft.XboxGameCallableUI" 
*GamingApp*

)

foreach ($Bloatware in $Bloatware) {
    Get-AppxPackage $Bloatware | Remove-AppxPackage 
}
