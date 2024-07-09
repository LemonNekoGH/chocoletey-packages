$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/nekomeowww/ollama-operator/releases/download/v0.7.1/kollama_v0.7.1_windows_amd64.zip'
$checksum64 = '379f52fde3fc295019eea402173ef6c5ae54aa4465ea1c1285bf7cb920463a61'
$checksumType64 = 'sha256'
$zipArchive = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'kollama.zip'
$distination = Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)

Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName -FileFullPath $zipArchive -Url64bit $url64 -CheckSum64 $checksum64 -CheckSumType64 $checksumType64
Get-ChocolateyUnzip -FileFullPath $zipArchive -Destination $distination
