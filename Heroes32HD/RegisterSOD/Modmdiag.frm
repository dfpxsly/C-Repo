[Misc]
token=modmdiag
Width=220
Height=210
StatusText=900
NextScreen=Sendreg
ignoreover=100

[Version]
Upgrade1=1

[OnInit]
Item1=Defaults,modmdiag,FAIL,WRITEDAT,Defaults,modmdiag,CANCEL

[OnExit]
Item1=Defaults,MODMDIAG,NOPHONE,SCREEN,MDNOLINE
Item2=Defaults,MODMDIAG,FAIL,SCREEN,MDFAIL

[Field Profile]
Field1="slidshow.fss~md",SLIDESHOW,201,15,8,188,148
Field2="Cancel",defpushbutton,2,153,185,50,14
Field3="",groupbox,-1,14,162,190,18
Field4="",ltext,900,17,168,180,8

[Messages]
...=...
NOUI_MD=Performing Modem Diagnostics
LOOKCOM1=Checking for modem at port COM1.
LOOKCOM2=Checking for modem at port COM2.
LOOKCOM3=Checking for modem at port COM3.
LOOKCOM4=Checking for modem at port COM4.
RESETCOM1=Resetting modem at port COM1.
RESETCOM2=Resetting modem at port COM2.
RESETCOM3=Resetting modem at port COM3.
RESETCOM4=Resetting modem at port COM4.
CHECKSPEEDMAX=Verifying modem speed.
CHECKDATARATE=Establishing connection rate.
CHECKPHONELINE=Checking for a live phone line.
IDENTIFYMFG=Identifying modem manufacturer.
IDENCOMPLETE=Identification completed.
ENHANCEDMD=Performing enhanced diagnostics.
CANCEL=Modem diagnostics canceled!

