echo starting copy
robocopy "./modded_files" "./sonic2010_0" /E
echo copy done
"./SkythTools-Common/PackCpk.exe" "./sonic2010_0"
move /y "./sonic2010_0.cpk" "./../Extract game to this folder/DATA/files/sonic2010_0.cpk"

"./Ishiiruka-Dolphin/Dolphin.exe" -e "./../Extract game to this folder/DATA/sys/main.dol"