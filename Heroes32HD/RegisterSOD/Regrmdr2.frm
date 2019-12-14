[Misc]
Width=213
Height=200
Title=3DO Product Registration
NextScreen=chekremd

[OnInit]
Item1=System,RegRemd,2,WRITEDAT,System,RegRemd,3
Item2=System,RegRemd,1,WRITEDAT,System,RegRemd,2
Item3=System,RegRemd,0,WRITEDAT,System,RegRemd,1
Item4=System,RegRemd,,WRITEDAT,System,RegRemd,
;Update pipeline.ini
Item5=*,*,*,WRITEINI,Defaults,RemTime,Pipeline.ini,System,RegRemd

[OnExit]
Item1=Defaults,Exitcode,3,GOTO,40
Item2=Defaults,Exitcode,1,GOTO,20
Item3=Defaults,Exitcode,2,GOTO,30

;Register Now:
Item20=*,*,*,SCREEN,Setup
Item21=*,*,*,WRITEDAT,System,Return,Reminder


;Already Registered: Reset RemTime/RegRemd, Set Identity, then Exit
Item30=*,*,*,WRITEDAT,System,RegRemd,0
Item31=*,*,*,WRITEINI,Defaults,RemTime,Pipeline.ini,System,RegRemd
Item32=*,*,*,WRITEDAT,Defaults,Identity,1
Item33=*,*,*,WRITEINI,Register,Identity,pipeline.ini,Defaults,Identity

;Remind Later:
Item40=*,*,*,WRITEDAT,Register,RemindOnly,1
Item41=*,*,*,WRITEINI,Register,RemindOnly,Pipeline.ini,Register,RemindOnly
Item42=*,*,*,SCREEN,Setup

[Field Profile]
Field1="Register &Now",defpushbutton,1,26,110,163,14
Field2="Register &Later",pushbutton,3,26,129,163,14
Field3="Already &Registered",pushbutton,2,26,148,163,14
Field4="",frame,-1,14,10,185,34
Field5="This notice is to remind you about registration.",ctext,-1,20,21,175,16
Field6="",frame,-1,14,50,185,132
Field7="Registering electronically is free, fast, and ensures you will become the first to hear about new product information, enhancements, and add-ons.",ltext,-1,28,58,162,38
Field8="Your registration options:",ltext,-1,28,95,162,13
