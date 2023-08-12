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