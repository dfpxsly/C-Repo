[Misc]
Width=220
Height=68
TITLE=Internet Registration

[OnExit]
Item1=Defaults,Exitcode,1,SCREEN,FTPREG
Item2=Defaults,Exitcode,2,SCREEN,print

[Field Profile]
Field1="&Yes",defpushbutton,1,51,42,50,14
Field2="&No",pushbutton,2,138,42,50,14
Field3="Would you like to try to register via the Internet (FTP)?",ltext,-1,35,12,175,16
Field4="asterisk",icon,200,6,11,64,64
