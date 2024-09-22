$ErrorActionPreference = 'Stop';
$params = @{
  packageName  = 'zebar'
  FileType     = 'msi'
  SilentArgs   = '/silent'
  Url          = 'https://github.com/glzr-io/zebar/releases/download/v1.8.1/zebar-v1.8.1-opt1-x64.msi' 
  checksum     = '723b2bc6e19fa67d5f9f1b88ecf23b14247771e95db35897b749708e5d5e41cd' 
  checksumType = 'sha256'
}
Install-ChocolateyPackage @params
