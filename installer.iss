; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "UniversalMolecule QT Wallet"
#define MyAppVersion "0.8.14.1"
#define MyAppPublisher "UniversalMolecule Foundation"
#define MyAppURL "http://www.universalmolecule.co.ve/"
#define MyAppExeName "universalmolecule-qt.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{45EA87EC-67DF-413B-BC1E-13B1FB903B5E}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=.\license.txt
OutputBaseFilename=universalmolecule-{#MyAppVersion}-setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "nepali"; MessagesFile: "compiler:Languages\Nepali.islu"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: ".\final\libwinpthread-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\final\mingwm10.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\final\qrc_bitcoin.cpp"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\final\QtCore4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\final\QtGui4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\final\QtNetwork4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\final\universalmoleculed.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\final\universalmolecule-qt.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\final\libgcc_s_dw2-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\final\libqrencode.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\final\libstdc++-6.dll"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
Root: "HKCR"; Subkey: "UniversalMolecule"; ValueType: string; ValueName: "URL Protocol"; ValueData: "URL:universalmolecule"
Root: "HKCR"; Subkey: "UniversalMolecule\DefaultIcon"; ValueType: string; ValueData: "{app}\universalmolecule-qt.exe"
Root: "HKCR"; Subkey: "UniversalMolecule\shell\open\command"; ValueType: string; ValueData: "{app}\universalmolecule-qt.exe %1"
