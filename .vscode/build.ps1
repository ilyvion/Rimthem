$ErrorActionPreference = 'Stop'

$Target = "C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Mods\Rimthem"

# remove mod folder
Remove-Item -Path $Target -Recurse -ErrorAction SilentlyContinue

# copy mod files

Copy-Item -Path Common $Target\Common -Recurse

New-Item -Path $Target -ItemType Directory -Name About
Copy-Item -Path About\About.xml $Target\About
Copy-Item -Path About\Manifest.xml $Target\About
Copy-Item -Path About\Preview.png $Target\About
Copy-Item -Path About\ModIcon.png $Target\About
Copy-Item -Path About\PublishedFileId.txt $Target\About

Copy-Item -Path CHANGELOG.md $Target
Copy-Item -Path LICENSE $Target
Copy-Item -Path LICENSE.Apache-2.0 $Target
Copy-Item -Path LICENSE.MIT $Target
Copy-Item -Path README.md $Target
Copy-Item -Path LoadFolders.xml $Target
