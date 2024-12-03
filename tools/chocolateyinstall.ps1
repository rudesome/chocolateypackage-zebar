$ErrorActionPreference = 'Stop';
$params = @{
  packageName      = 'zebar'
  FileType         = 'msi'
  SilentArgs       = "/qn /norestart"
  validExitCodes   = @(0, 3010, 1641)
  Url64bit         = 'https://github.com/glzr-io/zebar/releases/download/v2.6.1/zebar-v2.6.1-opt1-x64.msi' 
  checksum64       = '3eed6a7200c80a260e775324f360feca0fbd8bba107a80b50771721d41ef8178' 
  checksumType64   = 'sha256'
}
Install-ChocolateyPackage @params
