$ErrorActionPreference = 'Stop';
$params = @{
  packageName      = 'zebar'
  FileType         = 'msi'
  SilentArgs       = "/qn /norestart"
  validExitCodes   = @(0, 3010, 1641)
  Url64bit         = 'https://github.com/glzr-io/zebar/releases/download/v3.1.1/zebar-v3.1.1-opt1-x64.msi' 
  checksum64       = '6a23e94777f5736a4a132cef57376527df4606d3a94fba567f14d8de6b38e976' 
  checksumType64   = 'sha256'
}
Install-ChocolateyPackage @params
