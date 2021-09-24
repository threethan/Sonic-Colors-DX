"./SkythTools-Common/PackCpk.exe" "./../Extract game to this folder/DATA/files/sonic2010_0.cpk"
echo starting copy
xcopy /y /s /e "./modded_files" "./sonic2010_0" > NUL
echo copy done
"./SkythTools-Common/PackCpk.exe" "./sonic2010_0"
move /y "./sonic2010_0.cpk" "./../Extract game to this folder/DATA/files/sonic2010_0.cpk"