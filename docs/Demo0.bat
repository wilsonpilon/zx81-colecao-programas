@echo off
t2p demo0.txt
if errorlevel 1 echo &pause&goto END
start demo0.p
:END
