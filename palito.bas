# Apos LOAD and RUN
# 17 palitos serao mostrados na tela
# o jogador tira de 1 a 3 palitos
# ganha quem tirar o ultimo palito
# caracter grafico linha 1040 = chr$(133) = "\ :"

1 rem c-micromega 1983
1000 slow
1010 let a=17
1020 cls
1030 for i=1 to a
1040 print "\ :";
1050 next i
1060 print
1070 print
1080 print "entre com o numero de palitos    que ira tirar."
1090 input n
1100 if n<1 or n>3 then goto 1090
1110 print n
1120 let a=a-n
1130 if a=4 then goto 1370
1140 if a<4 then goto 1300
1150 let b=a-int(a/4)*4
1160 if b<=1 then goto 1260
1170 print
1180 print "eu tiro ";b;" palitos."
1190 let a=a-b
1200 print
1210 print "digite <new line>"
1230 if inkey$="" then goto 1230
1240 goto 1020
1250 print
1260 print "eu tiro 1 palito."
1270 let a=a-1
1280 goto 1200
1290 print
1300 print "eu tiro ";
1310 if a>1 then goto 1350
1320 print "1 palito e venco"
1330 print tab 22;"*"
1340 goto 1380
1350 print a;" palitos e venco"
1355 print tab 23;"*"
1360 goto 1380
1370 print "voce venceu"
1380 print at 21,0;"deseja jogar novamente?"
1400 if inkey$="s" then run
1410 if inkey$="n" then goto 1430
1420 goto 1400
1430 cls
1440 print at 11,11;"%f%i%m"
1450 stop
1460 save "palito%s"
1470 run
1480 stop