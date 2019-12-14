[Misc]
token=connect
NextScreen=Translat
Datafile=pipedlg.dat

[Oninit]
Item1=*,*,*,COPYINISECTION,Pipeline.ini,Setup,pipedlg.dat,Setup
Item2=*,*,*,Readini,Register,Identity,Pipeline.ini,Defaults,Identity
Item3=*,*,*,Readini,Language,SetLanguage,Preload.ini,Register,SetLanguage
Item4=*,*,*,READINI,Language,SetLanguage,preload.ini,System,SetLanguage
Item5=*,*,*,READINI,Defaults,Engineer,pipeline.ini,System,Engineer
Item6=*,*,*,READINI,Defaults,Build,pipeline.ini,System,Build
Item7=*,*,*,COPYINISECTION,Preload.ini,preload,pipedlg.dat,preload
item8=*,*,*,WRITEINI,Remind,Startuptitle,pipeline.ini,preload,599

;Reset [Defaults]Cancel flag
Item9=*,*,*,WRITEDAT,Defaults,Cancel,0
Item10=*,*,*,WRITEINI,Register,Cancel,Pipeline.ini,Defaults,Cancel

[OnExit]
Item1=Defaults,Identity,1,Screen,Registrd
Item2=Defaults,Identity,1,GOTO,20
Item3=*,*,*,Readini,Defaults,RemTime,Pipeline.ini,System,RegRemd
Item4=Setup,Remind,1,SCREEN,Remind

Item20=*,*,*,NOOP


