$ErrorActionPreference = 'Stop';
$params = @{
  packageName      = 'zebar'
  FileType         = 'msi'
  SilentArgs       = "/qn /norestart"
  validExitCodes   = @(0, 3010, 1641)
  Url64bit         = 'https://github.com/glzr-io/zebar/releases/download/v2.2.1/zebar-v2.2.1-opt1-x64.msi' 
  checksum64       = '001690858f1b7f2cae5adf8d08d6025aa15c6f228a13e7801f3eb14bd1109857' 
  checksumType64   = 'sha256'
}
Install-ChocolateyPackage @params
