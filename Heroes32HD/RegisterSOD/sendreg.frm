[Misc]
Width=220
Height=210
token=sendreg
StatusText=900
SaveDatSection=Register
NextScreen=Thanks

[Version]
Upgrade1=1

[OnInit]
;These next lines determine which "Dialing..." screen to display:
Item1=Register,SetLanguage,ENG,Setlanguage,ENG
Item2=Register,SetLanguage,SPA,Setlanguage,SPA
Item3=Register,SetLanguage,FRE,Setlanguage,FRE
Item4=Register,SetLanguage,ITA,Setlanguage,ITA
Item5=Register,SetLanguage,GER,Setlanguage,GER
Item6=Register,SetLanguage,POR,Setlanguage,POR
Item7=Register,SetLanguage,SWE,Setlanguage,SWE
Item8=Register,SetLanguage,DUT,Setlanguage,DUT
Item9=Register,SetLanguage,SPC,Setlanguage,SPA
Item10=Register,SetLanguage,FIN,Setlanguage,FIN
Item11=Register,SetLanguage,DAN,Setlanguage,DAN
Item12=Register,SetLanguage,NOR,Setlanguage,NOR

;If ENG and from US/Canada, change login to loginAXXX
Item13=Register,SetLanguage,ENG,GOTO,15
Item14=*,*,*,GOTO,50


Item15=Register,218,United States,WRITEINI,Defaults,login1,pipeline.ini,preload,login
Item16=Register,218,United States,WRITEINI,Defaults,login2,pipeline.ini,preload,login
Item17=Register,218,Canada,WRITEINI,Defaults,Login1,pipeline.ini,preload,login
Item18=Register,218,Canada,WRITEINI,Defaults,Login2,pipeline.ini,preload,login
Item19=*,*,*,Readini,Defaults,Login1,Pipeline.ini,Register,Login
Item20=Register,218,United States,GOTO,50
Item21=Register,218,Canada,GOTO,50

;only non-US/Canada will reach this next section:

Item22=Register,218,*,WRITEINI,Defaults,login1,pipeline.ini,preload,login
Item23=Register,218,*,WRITEINI,Defaults,login2,pipeline.ini,preload,login
Item24=*,*,*,GOTO,50

Item50=*,*,*,WRITEDAT,System,Return,Ereg
Item51=*,*,*,Readini,Defaults,Login1,Pipeline.ini,Register,Login


[OnExit]
Item1=Defaults,SENDREG,FAIL,SCREEN,RETRYMDM
Item2=Defaults,SENDREG,CANCEL,SCREEN,RETRYMDM
Item3=Defaults,SENDREG,SUCCESS,SCREEN,Thanks


[Messages]
NOUI_MD=Performing modem diagnostics
XMRECV=Processing...
ZMRECV=Processing... please wait
DROPCARRIER=Disconnecting
NOUI_INIT=Initializing modem
NOUI_DIALING=Dialing 3DO
NOUI_SIGNON=Signing on
NOUI_BEGINREG=Sending registration
NOUI_LOGOFF=Signing off
NOUI_FINISHED=Disconnecting
CANCEL=Data transfer canceled!
[Field Profile]
Field1="slidshow.fss~registration",SLIDESHOW,201,15,8,188,148
Field2="Cancel",defpushbutton,2,153,185,50,14
Field3="",groupbox,-1,14,162,190,18
Field4="",ltext,900,17,168,180,8
