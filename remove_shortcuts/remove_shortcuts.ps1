
$currentUserDesktop = [Environment]::GetFolderPath("Desktop")
$publicDesktop = "C:\Users\Public\Desktop"
function Remove-Shorcuts([System.String]$path){
    Get-ChildItem -Path $path *.lnk | ForEach-Object { Remove-Item -Path $_.FullName }
}

Remove-Shorcuts -path $currentUserDesktop
Remove-Shorcuts -path $publicDesktop