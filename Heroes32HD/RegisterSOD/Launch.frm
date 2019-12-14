[Misc]
token=connect
NextScreen=chekremd

[OnInit]
Item1=Setup,Web,1,LaunchAndWait,IQWeb2.exe

[OnExit]

Item1=*,*,*,READINI,Register,Cancel,Pipeline.ini,Defaults,Cancel
Item2=*,*,*,READINI,Register,Identity,Pipeline.ini,Defaults,Identity
;If Identity=1 or Cancel=1, the user completed or exited weblauncher properly -- skip LocalSurvey screens.
Item3=Defaults,Identity,1,GOTO,40
Item4=Defaults,Cancel,1,GOTO,40
Item5=Setup,LocalSurvey,1,GOTO,10

;If LocalSurvey=0 and Web=0, go straight to chekremd:
Item6=*,*,*,GOTO,50

;Handle Preload (LocalSurvey only)...
Item10=*,*,*,READINI,Defaults,Preload,pipeline.ini,System,Preload
Item11=System,Preload,1,GOTO,16
Item12=*,*,*,copyinisection,preload.ini,preload,pipedlg.dat,preload
Item13=*,*,*,copyinisection,preload.ini,preload,pipedlg.dat,Register
Item14=*,*,*,WRITEDAT,System,preload,1
Item15=*,*,*,WRITEINI,Defaults,preload,pipeline.ini,system,preload

;Display screen is the final execution (after all read/write flags):
Item16=*,*,*,READVAR,Register,SetLanguage,VAR5
Item17=*,*,*,LOADVAR,VAR6,VAR5
Item18=*,*,*,APPENDVAR,VAR6,"Reg01"
Item19=*,*,*,SCREEN,VAR6
Item20=*,*,*,GOTO,40

;Write Execute=1 to Register section of pipeline.ini (LocalSurvey and Web)
Item40=*,*,*,WRITEDAT,Misc,Execute,1
Item41=*,*,*,WRITEINI,Register,Execute,Pipeline.ini,Misc,Execute
Item42=*,*,*,CLEARINISECTION,Misc,pipedlg.dat

Item43=*,*,*,Readini,Defaults,Login1,Pipeline.ini,Register,Login

Item50=*,*,*,NOOP
