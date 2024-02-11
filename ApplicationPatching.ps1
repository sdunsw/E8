# Windows Application updater for Sole Operator to Meet ACSC Essential 8 ML 1 

# Comments
# switchs for winget upgrade
# -i Runs the installer in interactive mode. The default experience shows installer progress.
# -h Runs the installer in silent mode. This suppresses all UI. The default experience shows installer progress.
# -o Directs the logging to a log file. You must provide a path to a file that you have the write rights to.
# --force When a hash mismatch is discovered will ignore the error and attempt to install the package.
# --all Updates all available packages to the latest application.

# Requirements
# Internet Access
# Local Administrator Rights

# Determining if there are any Updates
$checkupdate = winget upgrade

# Action
if ($checkupdate -match "No applicable update found.") {
    exit
} else {
    #winget upgrade --all -i -h --force
	New-Item -ItemType File -Path C:\scripts\ -Name Test.txt
}
