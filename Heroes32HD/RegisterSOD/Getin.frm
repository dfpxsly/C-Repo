;If this is the 3rd reminder, inform user no more reminders will pop up

[misc]
Width=200
Height=100
Title=3DO Product Registration
Datafile=pipedlg.dat

[Version]
Upgrade1=1

[OnExit]

;If Register Now:
Item1=Defaults,Exitcode,4,SCREEN,Setup

;If Exit:
Item2=Defaults,Exitcode,1,WRITEDAT,System,RegRemd,0
;Update pipeline.ini
Item3=System,RegRemd,0,WRITEINI,Defaults,RemTime,Pipeline.ini,System,RegRemd

[Field Profile]
Field1="&Register Now",defpushbutton,4,35,75,60,14
Field2="E&xit",pushbutton,1,105,75,60,14
Field3="asterisk",icon,300,10,13,64,64
Field4="You will not have another opportunity to register if you exit now.",ltext,-1,36,15,140,16
Field5="Please press the 'Register Now' button to finish your registration.",ltext,-1,36,38,140,18
