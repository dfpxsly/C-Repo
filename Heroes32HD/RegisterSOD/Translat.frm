[Misc]
token=connect
Nextscreen=Launch

[OnInit]
Item1=*,*,*,READVAR,Register,SetLanguage,VAR0
Item2=*,*,*,LOADVAR,VAR1,VAR0
Item3=*,*,*,APPENDVAR,VAR1,"Title"
Item4=*,*,*,GOTO,10

Item10=Register,SetLanguage,@,READINI,Title,VAR1,Cancel.txt,Misc,Title
Item11=*,*,*,READINI,Title,VAR1,Canprint.txt,Misc,CanTitle
Item12=*,*,*,READINI,Title,VAR1,Faxrmail.txt,Misc,FaxTitle
Item13=*,*,*,READINI,Title,VAR1,Ftpask.txt,Misc,AskTitle
Item14=*,*,*,READINI,Title,VAR1,Ftpreg.txt,Misc,FtpTitle
Item15=*,*,*,READINI,Title,VAR1,MDFail.txt,Misc,FailTitle
Item16=*,*,*,READINI,Title,VAR1,MDNoline.txt,Misc,NolTitle
Item17=*,*,*,READINI,Title,VAR1,Printsuc.txt,Misc,PrintTitle
Item18=*,*,*,READINI,TitleBar,VAR1,Preload.ini,Misc,RegisTitle
Item19=*,*,*,READINI,TitleBar,VAR1,Preload.ini,Misc,Md1Title
Item20=*,*,*,READINI,Title,VAR1,Remind14.txt,Misc,Rem14Title
Item21=*,*,*,READINI,Title,VAR1,Retryftp.txt,Misc,TryftpTitle
Item22=*,*,*,READINI,Title,VAR1,Retrymdm.txt,Misc,MdtryTitle
Item23=*,*,*,READINI,Title,VAR1,Thanks.txt,Misc,ThkTitle
Item24=*,*,*,READINI,TitleBar,VAR1,Preload.ini,Misc,GetTitle
Item25=*,*,*,READINI,Title,VAR1,PrintChk.txt,Misc,ChkTitle
;Web Launcher forms:
Item26=*,*,*,READINI,TitleBar,VAR1,Preload.ini,Misc,AolTL
Item27=*,*,*,READINI,TitleBar,VAR1,Preload.ini,Misc,ConnectTL
Item28=*,*,*,READINI,TitleBar,VAR1,Preload.ini,Misc,FallbkTL
Item29=*,*,*,READINI,TitleBar,VAR1,Preload.ini,Misc,PermisTL
Item30=*,*,*,READINI,TitleBar,VAR1,Preload.ini,Misc,SelectTL
Item31=*,*,*,READINI,TitleBar,VAR1,Preload.ini,Misc,SplashTL
Item32=*,*,*,GOTO,40

;Leave gap here to add more files if needed
;Write everything now:
Item40=*,*,*,WRITEINI,Misc,Title,Cancel.frm,Misc,Title
Item41=*,*,*,WRITEINI,Misc,Title,Ftpask.frm,Misc,AskTitle
Item42=*,*,*,WRITEINI,Misc,Title,Ftpreg.frm,Misc,FtpTitle
Item43=*,*,*,WRITEINI,Misc,Title,MDFail.frm,Misc,FailTitle
Item44=*,*,*,WRITEINI,Misc,Title,MDNoline.frm,Misc,NolTitle
Item45=*,*,*,WRITEINI,Misc,Title,Printsuc.frm,Misc,PrintTitle
Item46=*,*,*,WRITEINI,Misc,Title,Registrd.frm,Misc,RegisTitle
Item47=*,*,*,WRITEINI,Misc,Title,Remind14.frm,Misc,Rem14Title
Item48=*,*,*,WRITEINI,Misc,Title,Retryftp.frm,Misc,TryftpTitle
Item49=*,*,*,WRITEINI,Misc,Title,Thanks.frm,Misc,ThkTitle
Item50=*,*,*,WRITEINI,Misc,Title,Getin.frm,Misc,GetTitle
Item51=*,*,*,WRITEINI,Misc,Title,regrmdr2.frm,Misc,Md1Title
Item52=*,*,*,WRITEINI,Misc,Title,Faxrmail.frm,Misc,FaxTitle
Item53=*,*,*,WRITEINI,Misc,Title,Canprint.frm,Misc,CanTitle
Item54=*,*,*,WRITEINI,Misc,Title,Retrymdm.frm,Misc,MdtryTitle
Item55=*,*,*,WRITEINI,Misc,Title,PrintChk.frm,Misc,ChkTitle
;Web Launcher forms:
Item56=*,*,*,WRITEINI,Misc,Title,Wlaol.frm,Misc,AolTL
Item57=*,*,*,WRITEINI,Misc,Title,Wlconect.frm,Misc,ConnectTL
Item58=*,*,*,WRITEINI,Misc,Title,Wlfallbk.frm,Misc,FallbkTL
Item59=*,*,*,WRITEINI,Misc,Title,Wlpermis.frm,Misc,PermisTL
Item60=*,*,*,WRITEINI,Misc,Title,Wlselect.frm,Misc,SelectTL
Item61=*,*,*,WRITEINI,Misc,Title,Wlsplash.frm,Misc,SplashTL

;Then clean up Misc section of pipedlg.dat:
Item62=*,*,*,CLEARINISECTION,Misc,pipedlg.dat

[OnExit]
;Check to see if remind=7 or 14
Item1=*,*,*,READINI,Misc,Remind,Remind.frm,Misc,RemindTime
Item2=*,*,*,READVAR,Register,SetLanguage,VAR2
Item3=*,*,*,LOADVAR,VAR3,VAR2
Item4=*,*,*,APPENDVAR,VAR3,"Field Profile"
Item5=*,*,*,LOADVAR,VAR4,VAR2
Item6=*,*,*,APPENDVAR,VAR4,"Messages"
Item7=*,*,*,LOADVAR,VAR5,VAR2
Item8=*,*,*,APPENDVAR,VAR5,"OnInit"
Item9=*,*,*,LOADVAR,VAR6,VAR2
Item10=*,*,*,APPENDVAR,VAR6,"OnExit"
Item11=*,*,*,LOADVAR,VAR7,VAR2
Item12=*,*,*,APPENDVAR,VAR7,"Translate"
Item13=*,*,*,LOADVAR,VAR8,VAR2
Item14=*,*,*,APPENDVAR,VAR8,"Field Profile2"
Item15=*,*,*,GOTO,20

Item20=Register,SetLanguage,@,COPYINISECTION,modmdiag.txt,VAR4,modmdiag.frm,Messages
Item21=*,*,*,COPYINISECTION,modmdiag.txt,VAR3,modmdiag.frm,Field Profile
Item22=*,*,*,COPYINISECTION,sendreg.txt,VAR3,sendreg.frm,Field Profile
Item23=*,*,*,COPYINISECTION,cancel.txt,VAR3,cancel.frm,Field Profile
Item24=*,*,*,COPYINISECTION,faxrmail.txt,VAR3,faxrmail.frm,Field Profile
Item25=*,*,*,COPYINISECTION,ftpask.txt,VAR3,ftpask.frm,Field Profile
Item26=*,*,*,COPYINISECTION,ftpask.txt,VAR3,ftpask.frm,Field Profile
Item27=*,*,*,COPYINISECTION,Printsuc.txt,VAR3,Printsuc.frm,Field Profile
Item28=*,*,*,COPYINISECTION,Registrd.txt,VAR3,Registrd.frm,Field Profile
Item29=*,*,*,COPYINISECTION,regrmdr2.txt,VAR3,regrmdr2.frm,Field Profile
Item30=*,*,*,COPYINISECTION,ftpreg.txt,VAR3,ftpreg.frm,Field Profile
Item31=*,*,*,COPYINISECTION,Remind14.txt,VAR3,Remind14.frm,Field Profile
Item32=*,*,*,COPYINISECTION,Retryftp.txt,VAR3,Retryftp.frm,Field Profile
Item33=*,*,*,COPYINISECTION,Retrymdm.txt,VAR3,Retrymdm.frm,Field Profile
Item34=*,*,*,COPYINISECTION,PrintChk.txt,VAR3,PrintChk.frm,Field Profile
Item35=*,*,*,COPYINISECTION,Mdnoline.txt,VAR3,Mdnoline.frm,Field Profile
Item36=*,*,*,COPYINISECTION,Mdfail.txt,VAR3,Mdfail.frm,Field Profile
Item37=*,*,*,COPYINISECTION,Canprint.txt,VAR3,Canprint.frm,Field Profile
Item38=*,*,*,COPYINISECTION,Thanks.txt,VAR3,Thanks.frm,Field Profile
Item39=*,*,*,COPYINISECTION,Getin.txt,VAR3,Getin.frm,Field Profile
Item40=*,*,*,COPYINISECTION,sendreg.txt,VAR4,sendreg.frm,Messages
Item41=*,*,*,COPYINISECTION,faxrmail.txt,VAR5,faxrmail.frm,OnInit
Item42=*,*,*,COPYINISECTION,Canprint.txt,VAR6,Canprint.frm,OnExit
Item43=*,*,*,COPYINISECTION,ftpreg.txt,VAR7,ftpreg.frm,Translate

;WebLauncher forms:
Item44=*,*,*,COPYINISECTION,Wlaol.txt,VAR3,Wlaol.frm,Field Profile
Item45=*,*,*,COPYINISECTION,Wlconect.txt,VAR3,Wlconect.frm,Field Profile
Item46=*,*,*,COPYINISECTION,Wlfallbk.txt,VAR3,Wlfallbk.frm,Field Profile
Item47=*,*,*,COPYINISECTION,Wlpermis.txt,VAR3,Wlpermis.frm,Field Profile
Item48=*,*,*,COPYINISECTION,Wlselect.txt,VAR3,Wlselect.frm,Field Profile
Item49=*,*,*,COPYINISECTION,Wlsplash.txt,VAR3,Wlsplash.frm,Field Profile

Item50=Setup,Remind,1,COPYINISECTION,PrintChk.txt,VAR8,PrintChk.frm,Field Profile
Item51=Misc,RemindTime,14,COPYINISECTION,Remind14.txt,VAR8,Remind14.frm,Field Profile
