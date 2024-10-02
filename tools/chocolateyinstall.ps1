$ErrorActionPreference = 'Stop';
$params = @{
  packageName      = 'zebar'
  FileType         = 'msi'
  SilentArgs       = "/qn /norestart"
  validExitCodes   = @(0, 3010, 1641)
  Url64bit         = 'https://github.com/glzr-io/zebar/releases/download/v2.2.2/zebar-v2.2.2-opt1-x64.msi' 
  checksum64       = '354824b120d01a6788824e1bc4c3eed1b68bddf918d8f2e9de4d6b4a1e7d88f9' 
  checksumType64   = 'sha256'
}
Install-ChocolateyPackage @params
