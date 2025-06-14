$ErrorActionPreference = 'Stop';
$params = @{
  packageName      = 'zebar'
  FileType         = 'msi'
  SilentArgs       = "/qn /norestart"
  validExitCodes   = @(0, 3010, 1641)
  Url64bit         = 'https://github.com/glzr-io/zebar/releases/download/v3.1.0/zebar-v3.1.0-opt1-x64.msi' 
  checksum64       = 'dbb259e09d2025ac5662cb9840b4b22c8c7dcf59372c95fc4550cd13981c77ba' 
  checksumType64   = 'sha256'
}
Install-ChocolateyPackage @params
