[Version]
Class=IEXPRESS
SEDVersion=3
[Options]
PackagePurpose=ExtractOnly
ShowInstallProgramWindow=0
HideExtractAnimation=0
UseLongFileName=1
InsideCompressed=0
CAB_FixedSize=0
CAB_ResvCodeSigning=0
KeepCabinet=1
RebootMode=I
InstallPrompt=%InstallPrompt%
DisplayLicense=%DisplayLicense%
FinishMessage=%FinishMessage%
TargetName=%TargetName%
FriendlyName=%FriendlyName%
AppLaunched=%AppLaunched%
PostInstallCmd=%PostInstallCmd%
AdminQuietInstCmd=%AdminQuietInstCmd%
UserQuietInstCmd=%UserQuietInstCmd%
SourceFiles=SourceFiles
[Strings]
InstallPrompt=Do you wish to install NoteWriter?
DisplayLicense=license.txt
FinishMessage=NoteWriter has been installed.
TargetName=Installers\NoteWriterPortable.exe
FriendlyName=NoteWriter
AppLaunched=
PostInstallCmd=
AdminQuietInstCmd=
UserQuietInstCmd=
FILE0="files.txt"
FILE1="license.txt"
FILE2="readme.txt"
FILE3="NoteWriter.cnt"
FILE4="NoteWriter.exe"
FILE5="NOTEWRITER.HLP"
FILE6="icons.dll"
[SourceFiles]
SourceFiles0=
SourceFiles1=Release\
SourceFiles2=icons_dll\Release\
[SourceFiles0]
%FILE0%=
%FILE1%=
%FILE2%=
[SourceFiles1]
%FILE3%=
%FILE4%=
%FILE5%=
[SourceFiles2]
%FILE6%=
