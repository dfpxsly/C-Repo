[Misc]
Width=179
Height=76
Title=Call Failure
previous=2
Nextscreen=Ftp

[OnInit]
Item1=*,*,*,Clearinisection,Defaults,pipedlg.dat
Item2=*,*,*,Readini,Register,Identity,Pipeline.ini,Defaults,Identity

[Field Profile]
Field1="&Yes",defpushbutton,10,38,47,50,14
Field2="&No",pushbutton,2,105,47,50,14
Field3="Your call did not go through.  Do you wish to retry?",ltext,-1,35,15,131,24
Field4="exclamation",icon,300,5,18,25,23
