[Misc]
Width=250
Height=110
TITLE=Print Registration

[OnExit]
Item1=Defaults,Exitcode,1,SCREEN,Printsuc
Item2=Defaults,Exitcode,1,WRITEDAT,Defaults,Identity,1
Item3=Defaults,Exitcode,1,WRITEINI,REGISTER,IDENTITY,PIPELINE.INI,Defaults,Identity
Item4=Defaults,Exitcode,2,SCREEN,Regprint
Item5=Defaults,Exitcode,3,SCREEN,Cancel

[Field Profile]
Field1="OK",defpushbutton,1,28,80,50,14
Field2="&Retry",pushbutton,2,102,80,50,14
Field3="&Cancel",pushbutton,3,175,80,50,14
Field4="Did your registration print properly? If Yes, press 'OK' to continue. Please fax or mail your registration to the address across the top of the form.",ltext,-1,35,12,200,24
Field5="If No, please press 'Retry' to try again. If you cannot print at this time due to printer problems, press 'Cancel' to exit the registration. You'll be reminded to register at a later date.",ltext,-1,35,45,200,24
Field6="asterisk",icon,200,6,11,64,64
Field7="",ltext,-1,1,1,1,1
