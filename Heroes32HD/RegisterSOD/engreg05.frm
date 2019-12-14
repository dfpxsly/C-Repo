[Misc]
Width=421
Height=260
Title=3DO Product Registration
NextScreen=Modem
DatSection=Register
IgnoreOver=20000
Bitmap=Page5.gif


[Version]
upgrade1=1

[OnExit]
Item1=Defaults,EXITCODE,2,SCREEN,CANCEL

[Font Profile]
Font1=8,0,600,0,0,1,Arial
Font2=8,0,600,0,0,1,Arial

[Font Info]
20010=1,0,0,0
20011=2,0,0,0
20012=2,0,0,0


[Field Profile]
Field1="On average, how many entertainment titles do you purchase each year for the PC?",Ltext,20010,35,28,175,30
Field2="NumPC",DropdownListBox,300,218,30,50,60

Field3="On average, how many entertainment titles do you purchase each year for a video game console?",Ltext,20011,35,58,175,30
Field4="NumVideo",DropdownListBox,400,218,60,50,60

Field5="Line.gif",picture,20500,35,95,220,5

Field6="How do you connect to the Internet?",ltext,20012,225,120,150,10

Field7="America Online",Radio,500,250,135,100,10
Field8="MSN",Radio,501,250,150,100,10
Field9="Dial-Up ISP",Radio,502,250,165,100,10
Field10="Cable Modem",Radio,503,250,180,100,10
Field11="Other",Radio,504,250,195,100,10

Field12="<< &Back",pushbutton,10,132,240,70,14
Field13="&Next >>",pushbutton,1,208,240,70,14
Field14="&Cancel",pushbutton,2,345,240,50,14


; Edit fields must be elaborated on here
[Edit Info]
300=DropdownListBox,5,0
400=DropdownListBox,5,0

[Values]
300=1-3,4-10,11-19,20+
400=1-3,4-10,11-19,20+

[Radio Groups]
Group1=500,501,502,503,504
Group1ReportAs=500