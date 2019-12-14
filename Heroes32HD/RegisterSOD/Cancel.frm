[Misc]
Width=180
Height=90
Title=Cancel Registration


[Version]
Upgrade1=1

[Field Profile]
Field1="&Yes",defpushbutton,2,24,60,50,14
Field2="&No",pushbutton,10,108,60,50,14
Field3="Registration is important!",ltext,-1,14,14,213,16
Field4="Are you sure you want to cancel?",ltext,-1,14,38,160,16

[OnExit]
Item1=Defaults,Exitcode,2,SCREEN,chekremd

;Write Cancel=1 to Register section of pipeline.ini
Item2=Defaults,Exitcode,2,WRITEDAT,Misc,Cancel,1
Item3=Defaults,Exitcode,2,WRITEINI,Register,Cancel,Pipeline.ini,Misc,Cancel
Item4=Defaults,Exitcode,2,CLEARINISECTION,Misc,pipedlg.dat

