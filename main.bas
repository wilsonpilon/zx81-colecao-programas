1 rem tanios hamzo
10 let p=0
20 let a=45
30 for j=0 to 9
40 cls
50 let i=int(rnd*20)+9
60 print at 21,i;"\,,\;;\,,"
70 let a=a+(5*(inkey$="6" and a<80))-((inkey$="7" and a>10)*5)
80 print at 21,0;a;"/"
90 if inkey$="0"then goto 110
100 goto 70
110 for t=1 to 17
120 let x=(t*(cos(a/180*pi))/pi*180)/6
130 let y=(t*(sin(a/180*pi))/pi*180-5*t*t)/6
140 plot x,y
150 unplot x,y
160 if y>4 then next t
170 if x<(i+2)*2 and x>=(i-1)*2 then goto 220
180 next j
190 print at 0,0;"% %t%a%n%k% %-% %i%n%d%i%c%e% %d%e% %a%c%e%r%t%o% ";p;"\ '/\. "
200 input i$
210 run
220 for f=0 to 30
230 print at 21,i;"\.'\.'\.'"
240 print at 21,i;"\'.\'.\'."
250 next f
260 let p=p+10
270 goto 180
280 save "tank"
290 run

