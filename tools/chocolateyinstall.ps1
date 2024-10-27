$ErrorActionPreference = 'Stop';
$params = @{
  packageName      = 'zebar'
  FileType         = 'msi'
  SilentArgs       = "/qn /norestart"
  validExitCodes   = @(0, 3010, 1641)
  Url64bit         = 'https://github.com/glzr-io/zebar/releases/download/v2.4.0/zebar-v2.4.0-opt1-x64.msi' 
  checksum64       = '79914d6404ae9f446f552c979cdb01c53059684da4ac1f807f54d119acc9dcff' 
  checksumType64   = 'sha256'
}
Install-ChocolateyPackage @params
