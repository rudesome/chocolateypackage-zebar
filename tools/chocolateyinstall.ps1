$ErrorActionPreference = 'Stop';
$params = @{
  packageName      = 'zebar'
  FileType         = 'msi'
  SilentArgs       = "/qn /norestart"
  validExitCodes   = @(0, 3010, 1641)
  Url64bit         = 'https://github.com/glzr-io/zebar/releases/download/v3.2.0/zebar-v3.2.0-opt1-x64.msi' 
  checksum64       = '59ec2d37ba7a7e3a7ece9cc4f6ad193f749aa7c6b9bd4fb4a33c3a9432e536ce' 
  checksumType64   = 'sha256'
}
Install-ChocolateyPackage @params
