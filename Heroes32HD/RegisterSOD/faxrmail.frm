[Misc]
Width=234
Height=100
Title=Print Registration

[Version]
Upgrade1=1



[OnExit]
Item1=Defaults,EXITCODE,1,SCREEN,regprint
Item2=Defaults,EXITCODE,2,SCREEN,cancel
Item3=Defaults,EXITCODE,2,CLEARINISECTION,hdr,pipedlg.dat


[OnInit]
Item1=*,*,*,WRITEDAT,hdr,l1,"This form will be OPTICALLY SCANNED, Please, DO NOT write on this form."
Item2=*,*,*,WRITEDAT,hdr,l2,"Information has been encoded to ensure accuracy. For customer service"
Item3=*,*,*,WRITEDAT,hdr,l3,"issues, refer to your user's manual for contact information."
Item4=*,*,*,WRITEDAT,hdr,l4,"  From the U.S. or Canada, Fax this form to: 888-289-0647."
Item5=*,*,*,WRITEDAT,hdr,l5,"From all other countries, Fax this form to: (+1) 770-612-9855"
Item6=*,*,*,WRITEDAT,hdr,l6,"DO NOT include a cover sheet. Or, mail this form in an envelope to:"
Item7=*,*,*,WRITEDAT,hdr,l7,
Item8=*,*,*,WRITEDAT,hdr,l8,
Item9=*,*,*,WRITEDAT,hdr,l9,""
Item10=*,*,*,GOTO,15
Item15=Register,218,Canada,GOTO,20
Item16=Register,218,United States,GOTO,20
Item17=*,*,*,GOTO,20
Item20=*,*,*,WRITEDAT,hdr,a1,"3DO, c/o IQ2.net, PO Box 671449, Marietta GA 30006-0025, USA"
Item21=Preload,LOGIN,tdo40401,WRITEDAT,hdr,ocr,ALSXAASSAAAX
Item22=Preload,LOGIN,tdo40501,WRITEDAT,hdr,ocr,ALSXAASSAALA
Item30=Preload,LOGIN,tdo41301,WRITEDAT,hdr,ocr,ALSXAASSAAXA
Item31=Preload,LOGIN,tdo41401,WRITEDAT,hdr,ocr,ALSXAASSAAXL
Item50=*,*,*,NOOP
Item23=Preload,LOGIN,tdo40601,WRITEDAT,hdr,ocr,ALSXAASSAALL
Item24=Preload,LOGIN,tdo40701,WRITEDAT,hdr,ocr,ALSXAASSAALS
Item25=Preload,LOGIN,tdo40801,WRITEDAT,hdr,ocr,ALSXAASSAALX
Item26=Preload,LOGIN,tdo40901,WRITEDAT,hdr,ocr,ALSXAASSAASA
Item27=Preload,LOGIN,tdo41001,WRITEDAT,hdr,ocr,ALSXAASSAASL
Item28=Preload,LOGIN,tdo41101,WRITEDAT,hdr,ocr,ALSXAASSAASS
Item29=Preload,LOGIN,tdo41201,WRITEDAT,hdr,ocr,ALSXAASSAASX
Item32=Preload,LOGIN,tdo41501,WRITEDAT,hdr,ocr,ALSXAASSAAXS
Item33=Preload,LOGIN,tdo41601,WRITEDAT,hdr,ocr,ALSXAASSAAXX
Item34=Preload,LOGIN,tdo41701,WRITEDAT,hdr,ocr,ALSXAASSALAA
Item35=Preload,LOGIN,tdo41801,WRITEDAT,hdr,ocr,ALSXAASSALAL
Item36=Preload,LOGIN,tdo41901,WRITEDAT,hdr,ocr,ALSXAASSALAS
Item37=Preload,LOGIN,tdo42001,WRITEDAT,hdr,ocr,ALSXAASSALAX
Item38=Preload,LOGIN,tdo42101,WRITEDAT,hdr,ocr,ALSXAASSALLA
Item39=*,*,*,GOTO,50
Item40=*,*,*,WRITEDAT,hdr,a1,"Registration, PO Box XXX, ASHTED, SURREY, GREAT BRITAIN, XXXX-XXX"
Item41=*,*,*,WRITEDAT,hdr,ocr,"ENGOCRCode"



[Field Profile]
Field1="&Print",defpushbutton,1,40,66,57,14
Field2="&Cancel",pushbutton,2,129,66,57,14
Field3="Please print your registration.  For your convenience, you can either fax or mail in your registration.  Do not include a cover page with the form.",ltext,-1,17,14,198,40
