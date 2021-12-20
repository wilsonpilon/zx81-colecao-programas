# Programa voltado a criancas para treino de soma
# Multiplas escolhas
# Linhas 60 e 140 : CHR$(128) : "\::"
# Linhas 80, 100 e 320 : CHR$(5) : "\: "
# Linhas 160 : CHR$(143) : "%?"
# Linhas 170 e 280 : CHR$(8) : "\@@"
# Linhas 180 e 330 : CHR$(7) : "\:'"
# Linhas 200 : CHR$(10) : "%\!!"

1 rem c-micromega 1983
10 slow
20 cls
30 dim a(5)
40 let y=pi/pi
50 let t$=""
60 let t$=str$ int(rnd*(code"\::")+y)+"+"+str$ int(rnd*(code"\::")+y)
70 let d=val(t$)
80 for i=y to code "\: "
90 let a(i)=int (rnd*(d+d)+y)
100 next i
110 let a(int(rnd*code "\: "+y))=d
120 for i=y to len t$
130 if code t$(i)<code "/" then next i
140 let t$(i)=chr$(code t$(i)+code"\::")
150 next i
160 let t$=t$+"=%?"
170 for i=code chr$(8) to code chr$(12)
180 print at i,code "=";a(i-code "\:'")
190 next i