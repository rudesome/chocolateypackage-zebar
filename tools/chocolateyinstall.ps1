$ErrorActionPreference = 'Stop';
$params = @{
  packageName      = 'zebar'
  FileType         = 'msi'
  SilentArgs       = "/qn /norestart"
  validExitCodes   = @(0, 3010, 1641)
  Url64bit         = 'https://github.com/glzr-io/zebar/releases/download/v2.5.1/zebar-v2.5.1-opt1-x64.msi' 
  checksum64       = 'ec8bb18dbc4d26e26f7817cc116c7b53bc883804cc815faaf9b1c2c4bc5aa09a' 
  checksumType64   = 'sha256'
}
Install-ChocolateyPackage @params
