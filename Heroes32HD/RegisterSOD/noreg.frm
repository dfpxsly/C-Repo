[Misc]
Width=421
Height=260
Title=3DO Product Registration
NextScreen=
DatSection=Register
IgnoreOver=20000
Bitmap=noreg.gif

[Version]
upgrade1=1

[OnExit]
;Item1=Defaults,EXITCODE,2,SCREEN,THANKS
Item1=*,*,*,CLEARREMINDER
Item2=Defaults,Exitcode,2,NOOP

[Font Profile]
Font1=14,0,600,0,0,1,Arial
Font2=12,0,600,0,0,1,Arial

[Font Info]
20010=1,0,0,0
20011=1,0,0,0
20012=1,0,0,0
20013=1,0,0,0

[Field Profile]
Field1="<< &Back",pushbutton,10,132,240,70,14
Field2="OK",pushbutton,2,208,240,70,14