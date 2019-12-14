[Misc]
Width=421
Height=260
Title=3DO Product Registration
NextScreen=EngReg04
DatSection=Register
IgnoreOver=20000
Bitmap=Page3.gif
Duringafter=1

[Version]
upgrade1=1

[OnInit]
Item1=*,*,*,CLEARINISECTION,Values,EngReg03.frm
Item2=Register,218,United States,COPYINISECTION,EngReg03.frm,USAVal,EngReg03.frm,Values
Item3=Register,218,Canada,COPYINISECTION,EngReg03.frm,CANVal,EngReg03.frm,Values

[OnExit]
Item1=Defaults,EXITCODE,2,SCREEN,CANCEL

[Font Profile]
Font1=10,0,600,0,0,1,Arial
Font2=10,0,600,0,0,1,Arial

[Font Info]
20010=1,0,0,0

[Field Profile]
Field1="Please fill out the following information:",ltext,20010,90,60,200,27
Field2="*Address:",ltext,-1,113,74,90,18
Field3="Address",EDIT,213,145,73,180,12

Field4="Address2",EDIT,214,145,88,180,12

Field5="*City:",ltext,-1,126,105,90,18
Field6="City",EDIT,215,145,103,80,12

Field7="*State:",ltext,-1,250,105,90,18
Field8="State",DropdownListBox,216,275,103,50,50

Field9="*Zip:",ltext,-1,127,120,90,18
Field10="ZipCode",EDIT,217,145,119,80,12

Field11="Phone Number:",ltext,-1,93,136,90,18
Field12="AreaCode",EDIT,219,145,135,20,12
Field13="PhoneNum",EDIT,220,167,135,59,12

Field14="Gender:",ltext,-1,236,136,90,18
Field15="Male",Radio,904,263,135,30,10
Field16="Female",Radio,905,293,135,35,10

Field17="E-mail address:",ltext,-1,95,151,90,18
Field18="email",EDIT,223,145,150,180,12

Field19="RecOffers",checkbox,620,145,165,10,9
Field20="Click here if you do not want to receive updated product information and special offers.",ltext,-1,158,165,150,25

Field21="*Fields marked with an asterisk are required",ltext,-1,145,188,200,18

Field22="<< &Back",pushbutton,10,132,240,70,14
Field23="&Next >>",pushbutton,1,208,240,70,14
Field24="&Cancel",pushbutton,2,345,240,50,14

; Edit fields must be elaborated on here
[Edit Info]
213=EDIT,50,1
214=EDIT,50,0
215=EDIT,50,1
216=DROPDOWNLISTBOX,2,1
217=EDITMASK,10,5
219=EDITMASK,3,0
220=EDITMASK,8,0
223=INETADDRESS,50,0

[Radio Groups]
Group1=904,905
Group1ReportAs=904

[Masks]
217=#####-####
219=###
220=###-####

[Validation]
223=Please enter email address as: name@servername
217=Please enter your zip code in the following format: ##### or #####-#### (# = Number)
219=Please enter your area code as: ### (# = Number)
220=Please enter your phone number in the following format: ###-#### (# = Number)

[DURING]
Item1=219,NE,,SETMINLEN,3,219
Item2=219,EQ,,SETMINLEN,0,219
Item3=220,NE,,SETMINLEN,3,220
Item4=220,EQ,,SETMINLEN,0,220

[Required Fields]
Default=Please enter the required information for the %s field.

[Translate]
ValidationFailed=Information needed...

[USAVal]
216=AK,AL,AR,AZ,CA,CO,CT,DC,DE,FL,GA,HI,IA,ID,IL,IN,KS,KY,LA,MA,MD,ME,MI,MN,MO,MS
216cont1=MT,NC,ND,NE,NH,NJ,NM,NV,NY,OH,OK,OR,PA,RI,SC,SD,TN,TX,UT,VA,VT,WA,WI,WV,WY

[CANVal]
216=AB,BC,MB,NB,NF,NS,NT,ON
216cont1=PE,QC,SK,YT

[Values]
216=AK,AL,AR,AZ,CA,CO,CT,DC,DE,FL,GA,HI,IA,ID,IL,IN,KS,KY,LA,MA,MD,ME,MI,MN,MO,MS
216cont1=MT,NC,ND,NE,NH,NJ,NM,NV,NY,OH,OK,OR,PA,RI,SC,SD,TN,TX,UT,VA,VT,WA,WI,WV,WY

