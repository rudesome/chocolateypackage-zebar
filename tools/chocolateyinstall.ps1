$ErrorActionPreference = 'Stop';
$params = @{
  packageName      = 'zebar'
  FileType         = 'msi'
  SilentArgs       = "/qn /norestart"
  validExitCodes   = @(0, 3010, 1641)
  Url64bit         = 'https://github.com/glzr-io/zebar/releases/download/v2.6.0/zebar-v2.6.0-opt1-x64.msi' 
  checksum64       = '0ada730a035a8974aed81ed61968578f946f4278f56b4d80da2ca1e2e9a79b49' 
  checksumType64   = 'sha256'
}
Install-ChocolateyPackage @params
