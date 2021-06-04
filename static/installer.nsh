!macro customInstall
  WriteRegStr SHCTX "SOFTWARE\RegisteredApplications" "Navigator" "Software\Clients\StartMenuInternet\Navigator\Capabilities"

  WriteRegStr SHCTX "SOFTWARE\Classes\Navigator" "" "Navigator HTML Document"
  WriteRegStr SHCTX "SOFTWARE\Classes\Navigator\Application" "AppUserModelId" "Navigator"
  WriteRegStr SHCTX "SOFTWARE\Classes\Navigator\Application" "ApplicationIcon" "$INSTDIR\Navigator.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Navigator\Application" "ApplicationName" "Navigator"
  WriteRegStr SHCTX "SOFTWARE\Classes\Navigator\Application" "ApplicationCompany" "Navigator"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Navigator\Application" "ApplicationDescription" "A privacy-focused, extensible and beautiful web browser"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Navigator\DefaultIcon" "DefaultIcon" "$INSTDIR\Navigator.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Navigator\shell\open\command" "" '"$INSTDIR\Navigator.exe" "%1"'

  WriteRegStr SHCTX "SOFTWARE\Classes\.htm\OpenWithProgIds" "Navigator" ""
  WriteRegStr SHCTX "SOFTWARE\Classes\.html\OpenWithProgIds" "Navigator" ""

  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Navigator" "" "Navigator"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Navigator\DefaultIcon" "" "$INSTDIR\Navigator.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Navigator\Capabilities" "ApplicationDescription" "A privacy-focused, extensible and beautiful web browser"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Navigator\Capabilities" "ApplicationName" "Navigator"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Navigator\Capabilities" "ApplicationIcon" "$INSTDIR\Navigator.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Navigator\Capabilities\FileAssociations" ".htm" "Navigator"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Navigator\Capabilities\FileAssociations" ".html" "Navigator"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Navigator\Capabilities\URLAssociations" "http" "Navigator"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Navigator\Capabilities\URLAssociations" "https" "Navigator"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Navigator\Capabilities\StartMenu" "StartMenuInternet" "Navigator"
  
  WriteRegDWORD SHCTX "SOFTWARE\Clients\StartMenuInternet\Navigator\InstallInfo" "IconsVisible" 1
  
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Navigator\shell\open\command" "" "$INSTDIR\Navigator.exe"
!macroend
!macro customUnInstall
  DeleteRegKey SHCTX "SOFTWARE\Classes\Navigator"
  DeleteRegKey SHCTX "SOFTWARE\Clients\StartMenuInternet\Navigator"
  DeleteRegValue SHCTX "SOFTWARE\RegisteredApplications" "Navigator"
!macroend