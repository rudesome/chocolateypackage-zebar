$ErrorActionPreference = 'Stop';
$params = @{
  packageName      = 'zebar'
  FileType         = 'msi'
  SilentArgs       = "/qn /norestart"
  validExitCodes   = @(0, 3010, 1641)
  Url64bit         = 'https://github.com/glzr-io/zebar/releases/download/v2.5.0/zebar-v2.5.0-opt1-x64.msi' 
  checksum64       = 'a99124762eee2bdac95bc71fb570ddefc4afd4f742b3bcbe9e49cf5d50b7b9b6' 
  checksumType64   = 'sha256'
}
Install-ChocolateyPackage @params
