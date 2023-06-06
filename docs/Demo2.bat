@echo off
t2p %0
if errorlevel 1 echo &pause&goto END
start %~n0.p
:END
exit

#AUTOSTART=1

@Start:
        print "demo2"

        for x=1 to 3
          print x
        next x

        goto @Start