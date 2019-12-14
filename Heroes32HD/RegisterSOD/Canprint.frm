[Misc]
Width=235
Height=90
Title=Printing Canceled

[Version]
Upgrade1=1

[Field Profile]
Field1="Information",icon,300,10,18,30,30
Field2="&Yes",defpushbutton,2,65,65,50,14
Field3="&No",pushbutton,1,120,65,50,14
Field4="You have chosen not to print, or your system is unable to print. (A default printer must be selected.)",ltext,-1,40,15,180,24
Field5="Are you sure you want to cancel printing?",ltext,-1,40,40,160,16

[OnInit]
Item1=*,*,*,CLEARINISECTION,hdr,pipedlg.dat

[OnExit]
Item1=Defaults,Exitcode,1,SKIPTO,Faxrmail
Item2=Defaults,Exitcode,1,GOTO,40
Item3=Defaults,Exitcode,2,SCREEN,chekremd

;Write Cancel=1 to Register section of pipeline.ini
Item4=Defaults,Exitcode,2,WRITEDAT,Misc,Cancel,1
Item5=Defaults,Exitcode,2,WRITEINI,Register,Cancel,Pipeline.ini,Misc,Cancel
Item6=Defaults,Exitcode,2,CLEARINISECTION,Misc,pipedlg.dat

Item40=*,*,*,NOOP

