# Programa voltado a criancas para treino de soma
# Multiplas escolhas
# Linhas 60 e 140 : CHR$(128) : "\::"
# Linhas 80, 100 e 320 : CHR$(5) : "\: "
# Linhas 160 : CHR$(143) : "%?"
# Linhas 170 e 280 : CHR$(8) : "\##"
# Linhas 180 e 330 : CHR$(7) : "\:'"
# Linhas 200 : CHR$(10) : "\~~"

1 rem c-micromega 1983
10 slow
20 cls
30 dim a(5)
40 let y=pi/pi
50 let t$=""
60 let t$=str$ int(rnd*code "\::"+y)+"+"+str$ int(rnd*(code "\::")+y)
70 let d=val(t$)
80 for i=y to code "\: "
90 let a(i)=int (rnd*(d+d)+y)
100 next i
110 let a(int(rnd*(code "\: ")+y))=d
120 for i=y to len t$
130 if code t$(i)<code "/" then next i
140 let t$(i)=chr$(code t$(i)+code "\::")
150 next i
160 let t$=t$+"=%?"
170 for i=code "\##" to code chr$(12)
180 print at i,code "=";a(i-code "\:'")
190 next i
200 let c=code "\~~"
210 let b=c
220 for i=pi/pi to code "="-len t$
230 print at b,i-y;"        "
240 let b=c
250 print at c,i;t$
260 let c=c+(inkey$="6")-(inkey$="7")
270 if c>code chr$(12) then let c=code chr$(12)
280 if c<code "\##" then let c=code "\##"
290 for j=y to code "h"
300 next j
310 next i
320 for i=y to code "\: "
330 if c=i+code "\:'" and a(i)=d then goto 370
340 next i
350 print at c,code "=";"*** errado"
360 goto 380
370 print at c,code "/";"certo"
380 print at 21,0;"deseja jogar novamente? (s/n)"
390 if inkey$="s" then run
400 if inkey$="n" then goto 420
410 goto 390
420 cls
430 print at 11,11;"%f%i%m"
440 stop
450 save "som%a"
460 stop

