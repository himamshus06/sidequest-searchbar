#define MyAppName "SideQuest"
#define MyAppVersion "1.1.0"
#define MyAppPublisher "Himamshu S"

[Setup]
AppId={{A1B2C3D4-E5F6-4A5B-8C9D-0E1F2A3B4C5D}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}

DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}

AllowNoIcons=yes

; 64-bit Windows installer
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64

OutputBaseFilename=SideQuestInstaller
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\sidequest\SideQuest\bin\Release\net8.0-windows\win-x64\publish\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\SideQuest.exe"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\SideQuest.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\SideQuest.exe"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifdoesntexist

[Registry]
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "SideQuest"; ValueData: """{app}\SideQuest.exe"""