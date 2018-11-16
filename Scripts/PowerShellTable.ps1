$Header = @"
<style>
TABLE {border-width: 1px; border-style: solid; border-color: black; border-collapse: collapse; margin-left:auto; margin-right:auto}
TH {border-width: 1px; padding: 3px; border-style: solid; border-color: black; background-color: #6495ED;}
TD {border-width: 1px; padding: 3px; border-style: solid; border-color: black;}
</style>
"@
Get-Process | ConvertTo-Html -Property Id,SI,ProcessName,Description,Product -Head $Header | Out-File -FilePath ($env:USERPROFILE + "\Desktop\ProcessList.html")