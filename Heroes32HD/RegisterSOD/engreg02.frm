[Misc]
Width = 421
Height = 260
Title=3DO Product Registration
NextScreen = EngReg03
DatSection = Register
IgnoreOver = 20000
Bitmap = Page2.gif


[Version]
upgrade1 = 1

[OnInit]
Item1=*,*,*,COPYINISECTION,EngReg02.Frm,SWAP,Pipedlg.dat,SWAP

[OnExit]
Item1=Defaults,EXITCODE,2,SCREEN,CANCEL
Item2=Register,218,Other,SCREEN,noReg
Item3=Register,218,United States,GOTO,20
Item4=Register,218,Canada,GOTO,30

Item20=*,*,*,WRITEINI,Field Profile,Field7,EngReg03.frm,SWAP,USA7
Item21=*,*,*,WRITEINI,Field Profile,Field8,EngReg03.frm,SWAP,USA8
Item22=*,*,*,WRITEINI,Field Profile,Field9,EngReg03.frm,SWAP,USA9
Item23=*,*,*,WRITEINI,Field Profile,Field10,EngReg03.frm,SWAP,USA10
Item24=*,*,*,WRITEINI,Edit Info,216,EngReg03.frm,SWAP,EI216
Item25=*,*,*,WRITEINI,Edit Info,217,EngReg03.frm,SWAP,USAIF217
Item26=*,*,*,WRITEINI,Masks,217,EngReg03.frm,SWAP,EMUSA217
Item27=*,*,*,WRITEINI,Validation,217,EngReg03.frm,SWAP,VAlUS
Item28=*,*,*,CLEARINISECTION,SWAP,pipedlg.dat
Item29=*,*,*,GOTO,40

Item30=*,*,*,WRITEINI,Field Profile,Field7,EngReg03.frm,SWAP,CAN7
Item31=*,*,*,WRITEINI,Field Profile,Field8,EngReg03.frm,SWAP,CAN8
Item32=*,*,*,WRITEINI,Field Profile,Field9,EngReg03.frm,SWAP,CAN9
Item33=*,*,*,WRITEINI,Field Profile,Field10,EngReg03.frm,SWAP,CAN10
Item34=*,*,*,WRITEINI,Edit Info,216,EngReg03.frm,SWAP,EI216
Item35=*,*,*,WRITEINI,Edit Info,217,EngReg03.frm,SWAP,CANIF217
Item36=*,*,*,WRITEINI,Masks,217,EngReg03.frm,SWAP,EMCAN217
Item37=*,*,*,WRITEINI,Validation,217,EngReg03.frm,SWAP,VAlCAN
Item38=*,*,*,CLEARINISECTION,SWAP,pipedlg.dat
Item39=*,*,*,GOTO,40

Item40=*,*,*,CLEARINISECTION,SWAP,pipedlg.dat

[Font Profile]
Font1=10,0,600,0,0,1,Arial
Font2=10,0,600,0,0,1,Arial

[Font Info]
20010=1,0,0,0
20011=2,0,0,0
20012=2,0,0,0

[Field Profile]
Field1="Please take a moment to fill out your name, country of residence and platform information.",ltext,20010,10,20,225,27
Field2="*First Name:",ltext,-1,15,63,50,18
Field3="First Name",EDIT,201,57,62,120,12
Field4="M.I.",ltext,-1,200,65,16,18
Field5="M.I.",EDIT,202,220,62,21,12
Field6="*Last Name:",ltext,-1,15,82,50,18
Field7="Last Name",EDIT,203,57,81,120,12

Field8="*Country:",Ltext,-1,15,105,35,9
Field9="Country",DropdownListBox,218,57,103,120,60

Field10=" What other systems do you own?",ltext,20011,15,134,175,18
Field11="",checkbox,660,50,150,70,10
Field12="PlayStation",rtext,-1,33,150,70,10
Field13="",checkbox,661,50,167,49,10
Field14="Macintosh",rtext,-1,51,167,49,10
Field15="",checkbox,662,50,184,55,10
Field16="Nintendo 64",rtext,-1,51,184,55,10

Field17="*Fields marked with an asterisk are required",ltext,20012,15,210,200,18

Field18="<< &Back",pushbutton,10,132,240,70,14
Field19="&Next >>",pushbutton,1,208,240,70,14
Field20="&Cancel",pushbutton,2,345,240,50,14


; Edit fields must be elaborated on here
[Edit Info]
201=NAME,30,1
202=NAME,1,0
203=NAME,30,1
218=DropdownListBox,30,1

[Required Fields]
Default=Please enter the required information for the %s field.

[Values]
218=United States,Canada,Other

[SWAP]
USA7="*State:",ltext,-1,250,105,90,18
USA8="State",DropdownListBox,216,275,103,50,50

USA9="*Zip:",ltext,-1,127,120,90,18
USA10="ZipCode",EDIT,217,145,119,80,12

CAN7="*Province:",ltext,-1,240,105,90,18
CAN8="Province",DropdownListBox,216,275,103,50,50

CAN9="*Postal Code:",ltext,-1,99,120,90,18
CAN10="PostalCode",EDIT,217,145,119,80,12

EI216=DROPDOWNLISTBOX,2,1
EIOTH216=EDIT,50,0
EIOTH217=EDIT,15,0
USAIF217=EDITMASK,10,5
CANIF217=EDITMASK,7,7

EMCAN217=@#@ #@#
EMUSA217=#####-####
EMOTH217=

VAlCan = "Please enter the %s in this format: 'LNL NLN' (L=Letter, N=Number). There is a space in the middle."
VALUS = "Please enter your zip code in the following format: ##### or #####-#### (# = Number)"
