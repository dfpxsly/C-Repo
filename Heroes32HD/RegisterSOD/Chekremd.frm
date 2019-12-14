[Misc]
token=connect

[OnInit]
Item1=*,*,*,WRITEDAT,Register,RemindOnly,0
Item2=*,*,*,WRITEINI,Register,RemindOnly,Pipeline.ini,Register,RemindOnly

[OnExit]
;If Identity=1, Clear reminder, [Defaults]Cancel and exit:
Item1=*,*,*,READINI,Register,Identity,Pipeline.ini,Defaults,Identity
Item2=Defaults,Identity,1,GOTO,5
Item3=*,*,*,GOTO,10

Item5=Defaults,Identity,1,CLEARREMINDER
Item6=*,*,*,SCREEN,
Item7=*,*,*,WRITEDAT,Defaults,Cancel,0
Item8=*,*,*,WRITEINI,Register,Cancel,Pipeline.ini,Defaults,Cancel

;If reminder disabled, exit:
Item10=Setup,Remind,1,GOTO,20
Item11=*,*,*,NOOP

;If reminded < 3 times, remind again: 
Item20=System,RegRemd,3,GOTO,30
Item21=*,*,*,SCREEN,Remind14

;Otherwise go to Getin
Item30=System,RegRemd,3,CLEARREMINDER
Item31=System,RegRemd,3,SCREEN,Getin
