$ErrorActionPreference = 'Stop';
$params = @{
  packageName      = 'zebar'
  FileType         = 'msi'
  SilentArgs       = "/qn /norestart"
  validExitCodes   = @(0, 3010, 1641)
  Url64bit         = 'https://github.com/glzr-io/zebar/releases/download/v3.3.1/zebar-v3.3.1-opt1-x64.msi' 
  checksum64       = '1d5584be8def58f828d55ed09cee52fe80fdd60ea118141f37963aa80e902c28' 
  checksumType64   = 'sha256'
}
Install-ChocolateyPackage @params
