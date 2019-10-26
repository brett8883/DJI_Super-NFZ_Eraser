<a href="https://github.com/brett8883/DJI_Super_NFZ-Eraser
" target="_blank"><img src="https://github.com/brett8883/DJI_Super-NFZ_Eraser/blob/2.0/ProgramFiles/NFZeraser.jpg"
alt="IMAGE ALT TEXT HERE" width="950" height="180" border="10" /></a>
# DJI Super-NFZ Eraser

*Tool to erase GeoZone entries from the nfz database on Mavic Pro/MPP/MP Artic White running a stock firmware version v01.04.0300 or a DJI_Super-Patcher https://github.com/brett8883/DJI_Super-Patcher patched firmware* 

Note: THERE MAY BE OTHER FIRMWARE VERSIONS OR OTHER AIRCRAFT THIS WILL WORK FOR BUT THESE ARE THE ONLY ONES I HAVE PERSONALLY TRIED IT ON. WILL UPDATE AS CONFIRMATION COMES IN OF COMPATIBILITY WITH OTHER FIRMWARE AND AIRCRAFT

DJI NFZ Eraser will replace the NFZ database that lives on the aircraft with an empty database effectively erasing all GeoZones inside it. 

## BACKGROUND:
On firmware version 01.04.0300 there is an anti-tamper mechanism that prevents flight of a Mavic if the nfz.db has been removed. Instead, by replacing the nfz.db with an empty one we satisfy the requirement to have a nfz.db even though there are no entries and no geozones in the database which has the same effect as removing it if we could. 

## Step-by-step:
1. Download full repository and keep all files in original folders
2. Double click DJI_NFZ-Eraser.cmd to start
3. Follow the directions in the DJI_NFZ-Eraser.cmd enable adb with dumldore
4. The program will automaticall clear the NFZ database as soon as dumldore has been closed 

### Acknowlegments 

Thanks to [DUMLdore](https://github.com/jezzab/DUMLdore) by @jezzab

Thanks to all the OGs that I learned from and continue to encouage me
