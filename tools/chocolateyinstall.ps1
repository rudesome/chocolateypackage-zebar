$ErrorActionPreference = 'Stop';
$params = @{
  packageName      = 'zebar'
  FileType         = 'msi'
  SilentArgs       = "/qn /norestart"
  validExitCodes   = @(0, 3010, 1641)
  Url64bit         = 'https://github.com/glzr-io/zebar/releases/download/v2.7.0/zebar-v2.7.0-opt1-x64.msi' 
  checksum64       = 'dcb1af82d693385b61b326def4244526cd9bfd8f418b3c94587bbce40a92b37c' 
  checksumType64   = 'sha256'
}
Install-ChocolateyPackage @params
