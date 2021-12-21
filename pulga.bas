# linhas 60,70 e 180 : chr$(128) : "\::"
1 rem c-micromega 1983
10 cls
20 slow
30 let c=not pi
40 let y=int pi
50 let x=y
60 let a$=" \::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::\::"
70 let a$="\::"+a$(  to 31)
80 if rnd>.8 and a$(3)<>" " then let a$(2)=" "
90 print at y,x;" "
100 let x=x+1-(inkey$="5")
110 if x>30 then goto val "95"
120 print at 4,0;a$;at y,x;"*"
