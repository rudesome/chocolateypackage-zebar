$ErrorActionPreference = 'Stop';

$params = @{
  packageName    = 'zebar'
  FileType       = 'msi'
  SilentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0, 3010, 1641)
  Url            = 'https://github.com/glzr-io/zebar/releases/download/v1.8.1/zebar-v1.8.1-opt1-x64.msi' 
  checksum       = '723B2BC6E19FA67D5F9F1B88ECF23B14247771E95DB35897B749708E5D5E41CD' 
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @params
