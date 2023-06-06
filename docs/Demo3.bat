@echo off
rem ---------------------------------
rem %0    calling file, complete name with path
rem %~nx0 calling file, complete name without path
rem %~n0  calling file, name without extension
rem %~x0  calling file, extension
rem ---------------------------------

echo calling T2P
rem ---------------------------------
rem t2p [-v] [-a] [-r] [-d] [-o filename] filename
rem -v  verbose
rem -a  autostart
rem -r  rem inverse
rem -d  dfile collapsed
rem -o  different output filename
rem ---------------------------------
t2p %0
if errorlevel 1 echo &pause&goto END

echo calling EightyOne
rem ---------------------------------
rem EightyOne has to be associated
rem with P-files to make this work!
rem ---------------------------------
start %~n0.p
:END
exit
#------------------------------------
# t2p code starts here
# (right after "exit" line)
#------------------------------------

#------------------------------------
# pseudo commands:
#   #AUTOSTART= 0 oder 1 (default=0)
#   #INCREMENT= Number   (default=10)
#   #REMINVERT= 0 oder 1 (default=0)
#   #FAST=      0 oder 1 (default=0)
#   #VERBOSE=   0 oder 1 (default=0)
#   #VARS  n=1
#   #VARS  number=2
#   #VARS  u$="123"
#   #VARS  a(2,3)=11,12,13,21,22,23
#   #VARS  a$(2,3,4)="abcd","efgh","ijkl","0123","4567","8901"
#------------------------------------

#AUTOSTART=1
# This makes the program start automaticly

# You can start lune numbers with 0
# And use the same number multiple!
#REMINVERT=1
# This makes the characters inside the REM line appear inverse
# The "ghost" character "|" allow spaces at the end of the line
#  without beeing deleted by the editor.
0     rem  THIS IS A |
0     rem    DEMO    |

#REMINVERT=0
#INCREMENT=1
# This makes the automatic line increment to be 1
100   rem normal again
      goto @Start

#INCREMENT=0
# This makes all the following lines to have the same number
# Here the "ghost" character "|" prevents T2P to ignore empty lines.
# Lines with simple text will be translated anyway.
|
made with T2P.EXE
|

#INCREMENT=10
# This makes the automatic line increment to be 10 again
6000
@Start:
      # @RemLine will give the line number
      print ,,"dump bytes of line ";@RemLine
      # &RemLine gives the address of the line
      for x=&RemLine to &RemLine+9
        print peek x;" ";
      next x
      print

      print
      print "lets do some tests..."

# This is the definition of the label
@RemLine:
      rem \01\39\30\c9
      # this is a simple Z80 code:
      # 01 39 30   ld bc,0x3039   (dec=12345)
      # c9         ret

      print "call usr in basic-line ";@RemLine
      # The first byte after the REM has an offset of 5
      print "usr ";&RemLine+5;" returns ";usr (&RemLine+5)

#REMINVERT=1
 9999 rem last line
10000 rem not really
# Line number bigger than 9999 are no problem at all!

      print "this is line ";@HighLine
      print "with a short loop..."
12345
@HighLine:
      for x=1 to 5
        print x;
      next x
      print

#VARS m$="12345"
#VARS m=12345
# This variable will be predifined in the P-file.
# Therefore do not start the program with a RUN !
      print "this is the string ";m$
      print "this is the variable ";m

# The biggest line number now is 16383 or 3FFF hex
16383 stop
