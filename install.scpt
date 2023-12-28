set theWorkingDirectory to POSIX path of ((path to me as text) & "::")

-- define folder paths
set theBasketFolder to (choose folder with prompt "SELECT THE BASKET FOLDER")
set theMediaFolder to (choose folder with prompt "SELECT THE MEDIA FOLDER")

-- prepare custom scripts
try
    do shell script "chmod 744 " & theWorkingDirectory & "build"
    set theFolderActionScripts to (do shell script theWorkingDirectory & "build " & (POSIX path of theMediaFolder as string))
    on error errorMessage
        display alert "error" message (errorMessage)
end try

-- setup folder action
set theActionScript to theFolderActionScripts & "/basket.scpt"
set scriptPath to POSIX path of theActionScript--
tell application "System Events"
    set theFolderAction to (make new folder action at end of folder actions with properties {path:(POSIX path of theBasketFolder)})
    tell theFolderAction to make new script at end of scripts with properties {name:"media-basket", POSIX path:scriptPath}
end tell

display alert "Tidy file" message ("dyfile was installed")

-- todo: add basket to finder