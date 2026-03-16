$ErrorActionPreference = 'Stop';
$params = @{
  packageName      = 'zebar'
  FileType         = 'msi'
  SilentArgs       = "/qn /norestart"
  validExitCodes   = @(0, 3010, 1641)
  Url64bit         = 'https://github.com/glzr-io/zebar/releases/download/v3.3.0/zebar-v3.3.0-opt1-x64.msi' 
  checksum64       = 'c4335213ad53b39ea34e0a52cffb2a47c334b39edaa8fb56c1a3b9138c88a9e1' 
  checksumType64   = 'sha256'
}
Install-ChocolateyPackage @params
