$ErrorActionPreference = 'Stop';
$params = @{
  packageName      = 'zebar'
  FileType         = 'msi'
  SilentArgs       = "/qn /norestart"
  validExitCodes   = @(0, 3010, 1641)
  Url64bit         = 'https://github.com/glzr-io/zebar/releases/download/v2.3.0/zebar-v2.3.0-opt1-x64.msi' 
  checksum64       = 'dfde14ba8f0f0ca214d633aaa0c4bb721672f8d30ba1c9cda27e0d5fbbd4a93c' 
  checksumType64   = 'sha256'
}
Install-ChocolateyPackage @params
