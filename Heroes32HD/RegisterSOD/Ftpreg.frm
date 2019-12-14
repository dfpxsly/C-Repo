[Misc]
Width=330
Height=145
Title=Attempting Internet Registration
token=FTPREG
IgnoreOver=4000

[OnExit]
Item1=Defaults,FTPREG,SUCCESS,SCREEN,Thanks
Item2=Defaults,FTPREG,FAIL,SCREEN,retryftp

;NOTE: FTPREG token sets Identity=1 on SUCCESS, by itself!


[OnInit]
Item1=*,*,*,Clearinisection,Defaults,pipedlg.dat
Item2=*,*,*,Readini,Register,Identity,Pipeline.ini,Defaults,Identity

[Field Profile]
Field1="Status Window",FTPSTAT,4500,34,23,262,91
Field2="Current status",frame,-1,14,7,300,122

[Translate]
Checking=Checking system for FTP capabilities...
Initializing=Initializing for data transfer...
Connecting=Connecting to host...
Sending=Sending registration information...
Receiving=Verifying data transfer...
Disconnecting=Disconnecting from host...
Success=Data transfer successful...
Failed=Data transfer unsuccessful...
