@echo off
t2p %0
if errorlevel 1 echo &pause&goto END
start %~n0.p
:END
exit

#AUTOSTART=1

100 print "demo1"
110 for x=1 to 3
120 print x
130 next x
140 goto 100