@echo off

set AVRDUDE=C:\PRJ\HW\Tools\avrdude\6.3\avrdude.exe
set ISPPARAMS=-c wiring -B 0.5 -P COM9
set VERBOSITY=
::set VERBOSITY=-vvv

%AVRDUDE% %VERBOSITY% -n -u %ISPPARAMS% -p atmega2560 -U hfuse:r:hfuse.s19:s -U lfuse:r:lfuse.s19:s -U efuse:r:efuse.s19:s
%AVRDUDE% %VERBOSITY% -n -u %ISPPARAMS% -p atmega2560 -U lock:r:lock.s19:s
%AVRDUDE% %VERBOSITY% -n -u %ISPPARAMS% -p atmega2560 -U flash:r:flash.s19:s
%AVRDUDE% %VERBOSITY% -n -u %ISPPARAMS% -p atmega2560 -U eeprom:r:eeprom.s19:s
