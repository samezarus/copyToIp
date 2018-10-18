Clear-Host

$text_file = "c:\temp\ip.txt"

$flag = Test-Path $text_file

$from = "c:\win.ini" # откуда
$to   = "c$\temp\"   # куда

if($flag -eq $True)
{
	$text_file_content = Get-Content -Path $text_file 
	foreach ($ip in $text_file_content) 
	{
		$to_patch = "\\"+$ip+"\"+$to
		Copy-Item -Path $from -Destination $to_patch -Recurse -Force
	}
}


