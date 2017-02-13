
 ::Copyright 2016-2025 SlyFoxStudios & AUTO-IT Australia
 ::
 :: Licensed under the Apache License, Version 2.0 (the "License");
 :: you may not use this file except in compliance with the License.
 :: You may obtain a copy of the License at
 ::
 ::     http://www.apache.org/licenses/LICENSE-2.0
 ::
 :: Unless required by applicable law or agreed to in writing, software
 :: distributed under the License is distributed on an "AS IS" BASIS,
 :: WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 :: See the License for the specific language governing permissions and
 :: limitations under the License.


@echo off
mode 200
color 0a
cls
mkdir "Tool"
cd Tool
mkdir "copied"
mkdir "Find"
cd ../
cls

:Header
cls
echo.
echo MADE BY BRAYDEN MOON AKA CRAZYWOLF
echo.
echo                  `+hdddd+`                                                `:ohdd+`                 
echo                 .ydhyddddy.                                            `-oyhhhhdds`                
echo                -hhyysyyyhdd/`                                        `/yhhyyyyyyhdo                
echo               `yhyyyyyyssyhdy:                                      -shdhysyyyysyhd:               
echo               +hyyyyyyysysyhdds.                                  `/hdhysyysyyyssohy`              
echo              `h/syyyyyyyyysyyhdd+`                              .+hddyysyyyysyyo:./m-              
echo              -h./sssysyyyyysysyhdh/`                          :ydddhssyyyyyyys+....h+              
echo              :y..+ysyysyysooooosyddy:`      /` `  `.   `:`  `odddho+++ossssyyh-....yy`             
echo              -y.../shhhyyso+++++osdddh+-:y-odh-y+/yh.`+hd.-+hdddy+++++++osyhddh....s+/`            
echo              .y..../ddddyo+++++++ohdddddddddddddddddyydddhdddddho+++++++++oyddd+`..s-:             
echo             .oo-.../yddhyo+++++++sdddddddddhyhddhddddddddddddddho+++++++oosyydds..-+.:             
echo             -+-/`..:sddyo+++++++ohdddddddddddyyhyyhhddddddddddddy+++++++osyhddh/..:--+.            
echo             +o.-...-syddyo+++++oddhhyyyyyyyyhyyysyyyhhyyyyyyyyyhdds++++++oshdhs:..-`.+-            
echo             -+.....-oyhdhs++++oyyyysyyyyyyyssyyyysyyyyyyyyyyyssssyyhyo++oyddyys/.....::            
echo             `/...../syyhddyosyyysyyyyyyyyyyssyhyyyhyyhyyyyyyyssysyyyyhddddyysys-.....-/`           
echo             `+:...:+syyyhdddhyysysyyyyyyyyssssyhhhhhhhhyyyyyyyyyyyyysyydddyyyyso:....//`           
echo            .++-../+syyhhddhyyyysyyyyysyysssosyyhhhhhhhhyyyssyyyyyyyyssssyhhhysyso/-...++.          
echo           `-:/..-+syyddhyyyysyyyyyyyyysssooyyhhhhhhhhhhhyyyyyyyyyyyyysssoosyhhyyyso+++:.`          
echo            `--:/+yhdhhyssoosyyyyyssyyssssssyyhhhhhhhhhhyyyyyyyyyyyyyysssooooosyhhhyo+-`            
echo            `/ydddddyso+///+ossyyyyyssssosssyyyhhhhhhhhhhyyyyyyyssssssssso++ossyyhddhhs+-`          
echo          `/shhdddhys+/::/:/+osssyysso+o++++oyyyyyyyhyyyyyysyssoosssysso+/////+ssyyhdddyo-`         
echo           `:ydddhys+::/://+syysysysyso++++++ssysssyyyysyyyso+++sssysyss+/:::/:+sssyhdddho/`        
echo          -ohdddyyso+oo/osssysssooooooso+++++ossyoosossssss+++++oyssyyyyso+//:///ossyhddhs/.        
echo         :osyddyyyssyyssyysso++/:----:///+++++ssyo+++oooss++/::/+////+ossysss+oso+sssydddyo:        
echo          `/yhysyyyssssssysso++/-........:/+++sss++++++syo+:.........-:+osysyyssyyyysyydddo:`       
echo         .sddyysyyyyysssssssss+:..:oyyso:..:++ss+++++++ss+:../oyyy+-./++oosyyysssyyysyydddyo-       
echo        `:oddyyyyyyyyyyyssso+/-.:sNhsdsyms..:+o++++++++os/.-hmsmyodmo:-/ossysysyyyyyysshddh/-       
echo       `:oydhyyyyyyyyyysso++/:..-/ddooohNMy-.++++++++++++::dMNyoosmy:-.-/+osyyyyyyyysyyhddmdo-      
echo     `-+shhhhhyyyyyssssys+++++/:.../sss+om+../+++++o++++:..yd+osso:...//+ossyyyyyyyssyyyyy/:/o/`    
echo     `--::/+syyyyyyssssss++++++/-........:////++osssss++//:-:........:++++oyyyyyyyyssyo/-:--` ``    
echo      .-:+syyyyssssyyyyys/:/+++++:--..--/++++++ossyyyyso++++//:--.-:/+++o++ssyyyssssyyss:--.``      
echo     `.-+ossssyysssssyysss/.:+oooo+++++++++++++oyyyyyyso+++++oo+++ooooo+/:osssssyyyyssoss:--.`      
echo     `-:::/oosysyyysssoo::/-..-/++ooooooo+++/++sysyyysyo+++ooooooo++//:.-/+:++osssssys+/:-...`      
echo     ..-/o+++osyysssoooo+-........--:oooo++++++ssyyyyyso++++ooooo/.....--../+ooooosyyssso:-`        
echo      `-:--:/+sssssooooooo+:......../ooo//////+syyyyyyys+++++++ooo.......:++ooooosssyyyo/:--.       
echo      .----:+osyssssssoooooo+/-...../o++++///+syysysysyys+++++++++.....:++ooooooosyyyyssso:--.      
echo     `---/osyyyyyyyssoooooooooo/-.`.:/++/////+oyysssssyyso++++++-:...:/ooooooooosssssyo::/+:.-`     
echo     .--+sssssssyssoooooooooooooo....:+//:---/ssss+:-+ssss/-://:..../oooooooooossyyysys+---.        
echo     `.++/::-:+ssssssoooooooooooo-....:......//:-......-:::........./ooooooooooossssyys+----        
echo      ``----+syyyysssssoooooooooo-...........-+syhyssyhhy/..........-ooooooooossssyssyss/-..`       
echo       `-.:ssssyyyysssssooooooooo-.........-yNMNNNNNmmmNMMd-.........+ooossssoossyyysssss-`         
echo        `/sysysyysssooooooooooooo:.-s:....`yNMMmdmNNmmdmMMNs.....:s../ooooosssssyyyyyyyo:-.         
echo        /yysyyyssoooooooooooooooo+./Nm-...`ymMMMMMMMMMMMMNmy`...-NN-.+ooooooosysssyyyysy--`         
echo       -ss+ssssoosssoooooooooooooo:./hs....-mmNMMMMMMMMMNmmo....yh/-+oooooooosys-::+ossy..          
echo       -. :/-` `:+soooooooooooooooo/-.+/....:dNNNMMMMMNNNms....+/./ooooooosssoss     `-/`           
echo               ````.:oooooooooooooooo/.:/.....+sdNNmNmds/-..../::+oooooooosss:.-                    
echo                   `++osoooooooooooooo+--//-.....-/y/-.....-//-/oooooooooos/.-                      
echo                     .+o+++ooooooooooooo/-.::+ssyhdNdysso+/:-/oooooooo+++o/-                        
echo                     ``   `/-:oo+ooooooooo+:...:/oosoo+:..-/oooooooo/o-`-`-                         
echo                           ` `+.`:o::oo+/oo++//:::---:::/+oooooo+oo+`..                             
echo                              `   `  //` :++/ooooooooooooooo-.++ `-.                                
echo                                          .: .:++-+oo/.`:o/`  `-                                    
echo.
echo.
echo.
echo BY PRESSING ANY KEY... YOU ARE AGREEING TO THE LICENSE PRESENT @ https://raw.githubusercontent.com/crazywolf132/WOLF-Tool-Batch/master/LICENSE
echo.
echo FOR MORE DETAILS PRESS THE BUTTON ON THE MAIN MENU.
pause >nul
del "nul"

:start
cls
echo MADE BY BRAYDEN MOON AKA CRAZYWOLF
echo>nul
echo>nul
echo>nul
echo.
echo>nul
echo>nul
echo>nul
echo>nul
echo [0] Uninstall Tool. - Removes everything the tool has ever made.
echo.
echo [1] All Directories.
echo [2] All SubDirectories.
echo [3] Delete created files.
echo [4] Password Generator
echo [5] PC CleanUp Utility
echo [6] Search for files.
echo.
echo [7] VIEW LICENSE AND SOURCE.
echo.
echo.
echo.
echo [8] Credits
echo [9] Exit
echo.
echo.
set /p input= You have chosen? 
if %input%==0 goto delete if NOT goto start
if %input%==1 goto directories if NOT goto start
if %input%==2 goto subdirectories if NOT goto start
if %input%==3 goto clear if NOT goto start
if %input%==4 goto password if NOT goto start
if %input%==5 goto pcclean if NOT goto start
if %input%==6 goto Search if NOT goto start
if %input%==7 goto License if NOT goto start
if %input%==8 goto Credits if NOT goto start
if %input%==9 goto MainExit if NOT goto start
echo "%input%" is not a valid option. Please try again.
cls
echo
goto start
cls

:License
start "" https://github.com/crazywolf132/WOLF-Tool-Batch/
echo [1] Back To Menu
echo [2] Exit
echo.
set /p op=Your Choice? 
if %op%==1 goto start
if %op%==2 goto MainExit
pause>nul
del "nul"

:Search
cls
echo MADE BY BRAYDEN MOON AKA CRAZYWOLF
echo>nul
echo>nul
echo>nul
echo.
echo>nul
echo>nul
echo>nul
echo>nul
echo [1] Find .psr Files.
echo [2] PSR Info report.  - size, date, location, time etc.
echo.
echo [3] Find .ufo Files.
echo [4] UFO Info report.  - size, date, location, time etc.
echo.
echo [5] Find Bank.psr.
echo [6] Bank.psr Info report.
echo.
echo [7] InvoiceTop Search.
echo [8] InvoiceBottom Search.
echo [9] Report Logo Search.
echo.
echo.
echo.
echo [0] Back Page...
echo.
echo.
set /p input= You have chosen? 
if %input%==0 goto start if NOT goto start
if %input%==1 goto searchPSR if NOT goto start
if %input%==2 goto infoPSR if NOT goto start
if %input%==3 goto seachUFO if NOT goto start
if %input%==4 goto infoUFO if NOT goto start
if %input%==5 goto searchBANK if NOT goto start
if %input%==6 goto infoBANK if NOT goto start
if %input%==7 goto InvTopSearch if NOT goto start
if %input%==8 goto InvBotSearch if NOT goto start
if %input%==9 goto RepLogoSearch if NOT goto start
echo "%input%" is not a valid option. Please try again.
cls
echo
goto start
cls

:SearchPage2
cls
echo MADE BY BRAYDEN MOON AKA CRAZYWOLF
echo>nul
echo>nul
echo>nul
echo.
echo>nul
echo>nul
echo>nul
echo>nul
echo [1] InvoiceTop Search.
echo [2] InvoiceBottom Search.
echo [3] Report Logo Search.
echo.
echo.
echo.
echo [7] Back Page...
::echo [8] Next Page...
echo.
echo.
set /p input= You have chosen? 
if %input%==1 goto InvTopSearch if NOT goto start
if %input%==2 goto InvBotSearch if NOT goto start
if %input%==3 goto RepLogoSearch if NOT goto start
if %input%==7 goto Search if NOT goto start
echo "%input%" is not a valid option. Please try again.
cls
echo
goto start
cls

:directories
@echo off
color 0a
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo                                 =   0 ]
echo ---------------------------------------
dir /b > files.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo []                              =   5 ]
echo ---------------------------------------
findstr /v ".psr" files.txt > 1.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][]                            =  15 ]
echo ---------------------------------------
findstr /v ".txt" 1.txt > 2.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][]                          =  23 ]
echo ---------------------------------------
findstr /v ".ufo" 2.txt > 3.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][]                        =  30 ]
echo ---------------------------------------
findstr /v ".JPG" 3.txt > 4.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][]                      =  38 ]
echo ---------------------------------------
findstr /v ".bat" 4.txt > 5.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][]                      =  42 ]
echo ---------------------------------------
findstr /v "null" 5.txt > 6.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][]                    =  45 ]
echo ---------------------------------------
findstr /v "Tool" 6.txt > list.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][]                  =  48 ]
echo ---------------------------------------
del "files.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][]                =  50 ]
echo ---------------------------------------
del "file.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.           Please Wait
echo ---------------------------------------
echo [][][][][][][][][]              =  56 ]
echo ---------------------------------------
del "1.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][]            =  63 ]
echo ---------------------------------------
del "2.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][]          =  69 ]
echo ---------------------------------------
del "3.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][]        =  75 ]
echo ---------------------------------------
del "4.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][]      =  79 ]
echo ---------------------------------------
del "5.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][]    =  86 ]
echo ---------------------------------------
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  90 ]
echo ---------------------------------------
del "6.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  96 ]
echo ---------------------------------------
del "null"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------

echo.
echo [1] Back To Menu
echo [2] Exit
echo.
set /p op=Your Choice? 
if %op%==1 goto start
if %op%==2 goto MainExit
pause>nul
del "nul"

:subdirectories
@echo off
color 0a
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo                                 =   0 ]
echo ---------------------------------------
dir /b /s /b > sub.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo []                              =   5 ]
echo ---------------------------------------
findstr /v ".psr" sub.txt > 1.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][]                            =  15 ]
echo ---------------------------------------
findstr /v ".txt" 1.txt > 2.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][]                          =  23 ]
echo ---------------------------------------
findstr /v ".ufo" 2.txt > 3.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][]                        =  30 ]
echo ---------------------------------------
findstr /v ".JPG" 3.txt > 4.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][]                      =  38 ]
echo ---------------------------------------
findstr /v ".bat" 4.txt > 5.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][]                      =  42 ]
echo ---------------------------------------
findstr /v "null" 5.txt > 6.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][]                    =  45 ]
echo ---------------------------------------
findstr /v "Tool" 6.txt > subdirectories.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][]                  =  48 ]
echo ---------------------------------------
del "files.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][]                =  50 ]
echo ---------------------------------------
del "file.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.           Please Wait
echo ---------------------------------------
echo [][][][][][][][][]              =  56 ]
echo ---------------------------------------
del "1.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][]            =  63 ]
echo ---------------------------------------
del "2.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][]          =  69 ]
echo ---------------------------------------
del "3.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][]        =  75 ]
echo ---------------------------------------
del "4.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][]      =  79 ]
echo ---------------------------------------
del "5.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][]    =  86 ]
echo ---------------------------------------
del "6.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  90 ]
echo ---------------------------------------
del "sub.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  96 ]
echo ---------------------------------------
del "null"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------

echo.
echo [1] Back To Menu
echo [2] Exit
echo.
set /p op=Your Choice?  
if %op%==1 goto start
if %op%==2 goto MainExit
pause>nul
del "nul"

:clear
@echo off
color 0a
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo                                 =   0 ]
echo ---------------------------------------
del "null"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo []                              =   5 ]
echo ---------------------------------------
del "1.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][]                            =  15 ]
echo ---------------------------------------
del "2.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][]                          =  23 ]
echo ---------------------------------------
del "3.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][]                        =  30 ]
echo ---------------------------------------
del "4.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][]                      =  38 ]
echo ---------------------------------------
del "5.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][]                      =  42 ]
echo ---------------------------------------
del "subdirectories.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][]                    =  45 ]
echo ---------------------------------------
del "sub.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][]                  =  48 ]
echo ---------------------------------------
del "files.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][]                =  50 ]
echo ---------------------------------------
del "file.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.           Please Wait
echo ---------------------------------------
echo [][][][][][][][][]              =  56 ]
echo ---------------------------------------
del "6.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][]            =  63 ]
echo ---------------------------------------
del "locations.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][]          =  69 ]
echo ---------------------------------------
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][]        =  75 ]
echo ---------------------------------------
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][]      =  79 ]
echo ---------------------------------------
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][]    =  86 ]
echo ---------------------------------------
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  90 ]
echo ---------------------------------------
ping localhost -n 3 >nul
del "list.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  96 ]
echo ---------------------------------------
ping localhost -n 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------

echo.
echo [1] Back To Menu
echo [2] Exit
echo.
set /p op=Your Choice? 
if %op%==1 goto start
if %op%==2 goto MainExit
pause>nul
del "nul"

:password
@echo off
color 0a
:Start2
cls
goto Start3
:Start3
echo Password Generator MADE BY BRAYDEN MOON AKA CRAZYWOLF
echo.
echo Please write the password down somewhere in case you forget it.
echo ----------------------------------------­-----------------------
echo [1] 1 Random Password
echo [2] 5 Random Passwords
echo [3] 10 Random Passwords
echo [4] Back To Menu
echo Input your choice
set input=
set /p input= Choice:
if %input%==1 goto A if NOT goto Start2
if %input%==2 goto B if NOT goto Start2
if %input%==3 goto C if NOT goto Start2
if %input%==4 goto start if NOT goto Start2
:A
cls
echo Your password is %random%
echo Now choose what you want to do.
echo 1) Go back to the beginning
echo 2) Exit
set input=
set /p input= Choice:
if %input%==1 goto Start2 if NOT goto Start 2
if %input%==2 goto MainExit if NOT goto Start 2
:Exit
exit
:B
cls
echo Your 5 passwords are %random%, %random%, %random%, %random%, %random%.
echo Now choose what you want to do.
echo 1) Go back to the beginning
echo 2) Exit
set input=
set /p input= Choice:
if %input%==1 goto Start2 if NOT goto Start 2
if %input%==2 goto MainExit if NOT goto Start 2
:C
cls
echo Your 10 Passwords are %random%, %random%, %random%, %random%, %random%, %random%, %random%, %random%, %random%, %random%
echo Now choose what you want to do.
echo 1) Go back to the beginning
echo 2) Exit
set input=
set /p input= Choice:
if %input%==1 goto Start2 if NOT goto Start 2
if %input%==2 goto MainExit if NOT goto Start 2

::Probably should re-do that so it looks nice and matches the loading bar theme.


:pcclean
@echo off
color 0a

:menu
cls
echo MADE BY BRAYDEN MOON AKA CRAZYWOLF
echo.
echo --------------------------------------------------------------------------------
echo PC Cleanup Utility
echo --------------------------------------------------------------------------------
echo.
echo Select a tool
echo =============
echo.
echo [1] Delete Internet Cookies
echo [2] Delete Temporary Internet Files
echo [3] Disk Cleanup
echo [4] Disk Defragment
echo [5] Exit
echo [6] Back To Menu
echo.
set /p op=Your Choice? 
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
if %op%==4 goto 4
if %op%==5 goto MainExit
if %op%==6 goto start
goto error
:1
cls
echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Deleting Cookies...
ping localhost -n 3 >nul
del /f /q "%userprofile%\Cookies\*.*"
cls
echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Cookies deleted.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto menu
:2
cls
echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Deleting Temporary Files...
ping localhost -n 3 >nul
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
cls
echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Temporary Internet Files deleted.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto menu
:3
cls
echo --------------------------------------------------------------------------------
echo Disk Cleanup
echo --------------------------------------------------------------------------------
echo.
echo Running Disk Cleanup...
ping localhost -n 3 >nul
if exist "C:\WINDOWS\temp"del /f /q "C:WINDOWS\temp\*.*"
if exist "C:\WINDOWS\tmp" del /f /q "C:\WINDOWS\tmp\*.*"
if exist "C:\tmp" del /f /q "C:\tmp\*.*"
if exist "C:\temp" del /f /q "C:\temp\*.*"
if exist "%temp%" del /f /q "%temp%\*.*"
if exist "%tmp%" del /f /q "%tmp%\*.*"
if not exist "C:\WINDOWS\Users\*.*" goto skip
if exist "C:\WINDOWS\Users\*.zip" del "C:\WINDOWS\Users\*.zip" /f /q
if exist "C:\WINDOWS\Users\*.exe" del "C:\WINDOWS\Users\*.exe" /f /q
if exist "C:\WINDOWS\Users\*.gif" del "C:\WINDOWS\Users\*.gif" /f /q
if exist "C:\WINDOWS\Users\*.jpg" del "C:\WINDOWS\Users\*.jpg" /f /q
if exist "C:\WINDOWS\Users\*.png" del "C:\WINDOWS\Users\*.png" /f /q
if exist "C:\WINDOWS\Users\*.bmp" del "C:\WINDOWS\Users\*.bmp" /f /q
if exist "C:\WINDOWS\Users\*.avi" del "C:\WINDOWS\Users\*.avi" /f /q
if exist "C:\WINDOWS\Users\*.mpg" del "C:\WINDOWS\Users\*.mpg" /f /q
if exist "C:\WINDOWS\Users\*.mpeg" del "C:\WINDOWS\Users\*.mpeg" /f /q
if exist "C:\WINDOWS\Users\*.ra" del "C:\WINDOWS\Users\*.ra" /f /q
if exist "C:\WINDOWS\Users\*.ram" del "C:\WINDOWS\Users\*.ram"/f /q
if exist "C:\WINDOWS\Users\*.mp3" del "C:\WINDOWS\Users\*.mp3" /f /q
if exist "C:\WINDOWS\Users\*.mov" del "C:\WINDOWS\Users\*.mov" /f /q
if exist "C:\WINDOWS\Users\*.qt" del "C:\WINDOWS\Users\*.qt" /f /q
if exist "C:\WINDOWS\Users\*.asf" del "C:\WINDOWS\Users\*.asf" /f /q
:skip
if not exist C:\WINDOWS\Users\Users\*.* goto skippy /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.zip del C:\WINDOWS\Users\Users\*.zip /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.exe del C:\WINDOWS\Users\Users\*.exe /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.gif del C:\WINDOWS\Users\Users\*.gif /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.jpg del C:\WINDOWS\Users\Users\*.jpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.png del C:\WINDOWS\Users\Users\*.png /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.bmp del C:\WINDOWS\Users\Users\*.bmp /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.avi del C:\WINDOWS\Users\Users\*.avi /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpg del C:\WINDOWS\Users\Users\*.mpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpeg del C:\WINDOWS\Users\Users\*.mpeg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ra del C:\WINDOWS\Users\Users\*.ra /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ram del C:\WINDOWS\Users\Users\*.ram /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mp3 del C:\WINDOWS\Users\Users\*.mp3 /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.asf del C:\WINDOWS\Users\Users\*.asf /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.qt del C:\WINDOWS\Users\Users\*.qt /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mov del C:\WINDOWS\Users\Users\*.mov /f /q
:skippy
if exist "C:\WINDOWS\ff*.tmp" del C:\WINDOWS\ff*.tmp /f /q
if exist C:\WINDOWS\ShellIconCache del /f /q "C:\WINDOWS\ShellI~1\*.*"
cls
echo --------------------------------------------------------------------------------
echo Disk Cleanup
echo --------------------------------------------------------------------------------
echo.
echo Disk Cleanup successful!
echo.
pause
goto menu
:4
cls
echo --------------------------------------------------------------------------------
echo Disk Defragment
echo --------------------------------------------------------------------------------
echo.
echo Defragmenting hard disks...
ping localhost -n 3 >nul
defrag -c -v
cls
echo --------------------------------------------------------------------------------
echo Disk Defragment
echo --------------------------------------------------------------------------------
echo.
echo Disk Defrag successful!
echo.
pause
goto menu
:error
cls
echo Command not recognized.
ping localhost -n 4 >nul
goto menu

::Updater script
:update
cls
set currentver=1.0
IF %eror% EQU 1 goto begin
get (http://zectr.com/work/batch/updater.bat)
call updater.bat
:begin
echo MENU

::Search PSR Script
:searchPSR
@echo off
color 0a
cd Tool
cd Find
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo                                 =   0 ]
echo ---------------------------------------
dir /S C:\*.psr /b > PSR-location-c.txt
dir /S E:\*.psr /b > PSR-location-e.txt
dir /S I:\*.psr /b > PSR-location-i.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo []                              =   5 ]
echo ---------------------------------------
dir /S D:\*.psr /b > PSR-location-d.txt
dir /S Units-Data:\*.psr /b > PSR-location-units.txt
dir /S J:\*.psr /b > PSR-location-j.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][]                            =  15 ]
echo ---------------------------------------
dir /S B:\*.psr /b > PSR-location-b.txt
dir /S F:\*.psr /b > PSR-location-f.txt
dir /S K:\*.psr /b > PSR-location-k.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][]                          =  23 ]
echo ---------------------------------------
dir /S G:\*.psr /b > PSR-location-g.txt
dir /S H:\*.psr /b > PSR-location-h.txt
dir /S L:\*.psr /b > PSR-location-l.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][]                        =  30 ]
echo ---------------------------------------
dir /S M:\*.psr /b > PSR-location-m.txt
dir /S N:\*.psr /b > PSR-location-n.txt
dir /S O:\*.psr /b > PSR-location-o.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][]                      =  38 ]
echo ---------------------------------------
dir /S P:\*.psr /b > PSR-location-p.txt
dir /S Q:\*.psr /b > PSR-location-q.txt
dir /S R:\*.psr /b > PSR-location-r.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][]                      =  42 ]
echo ---------------------------------------
dir /S S:\*.psr /b > PSR-location-s.txt
dir /S T:\*.psr /b > PSR-location-t.txt
dir /S U:\*.psr /b > PSR-location-u.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][]                    =  45 ]
echo ---------------------------------------
dir /S V:\*.psr /b > PSR-location-v.txt
dir /S W:\*.psr /b > PSR-location-w.txt
dir /S X:\*.psr /b > PSR-location-x.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][]                  =  48 ]
echo ---------------------------------------
dir /S Y:\*.psr /b > PSR-location-y.txt
dir /S Z:\*.psr /b > PSR-location-z.txt
dir /S A:\*.psr /b > PSR-location-a.txt
findstr /v "$Recycle" PSR-location-c.txt > PSR-location-c-no-bin.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][]                =  50 ]
echo ---------------------------------------
for /F %%A in ("PSR-location-a.txt") do If %%~zA equ 0 del PSR-location-a.txt
for /F %%A in ("PSR-location-b.txt") do If %%~zA equ 0 del PSR-location-b.txt
for /F %%A in ("PSR-location-c.txt") do If %%~zA equ 0 del PSR-location-c.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.           Please Wait
echo ---------------------------------------
echo [][][][][][][][][]              =  56 ]
echo ---------------------------------------
for /F %%A in ("PSR-location-d.txt") do If %%~zA equ 0 del PSR-location-d.txt
for /F %%A in ("PSR-location-e.txt") do If %%~zA equ 0 del PSR-location-e.txt
for /F %%A in ("PSR-location-f.txt") do If %%~zA equ 0 del PSR-location-f.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][]            =  63 ]
echo ---------------------------------------
for /F %%A in ("PSR-location-g.txt") do If %%~zA equ 0 del PSR-location-g.txt
for /F %%A in ("PSR-location-h.txt") do If %%~zA equ 0 del PSR-location-h.txt
for /F %%A in ("PSR-location-i.txt") do If %%~zA equ 0 del PSR-location-i.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][]          =  69 ]
echo ---------------------------------------
for /F %%A in ("PSR-location-j.txt") do If %%~zA equ 0 del PSR-location-j.txt
for /F %%A in ("PSR-location-k.txt") do If %%~zA equ 0 del PSR-location-k.txt
for /F %%A in ("PSR-location-l.txt") do If %%~zA equ 0 del PSR-location-l.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][]        =  75 ]
echo ---------------------------------------
for /F %%A in ("PSR-location-m.txt") do If %%~zA equ 0 del PSR-location-m.txt
for /F %%A in ("PSR-location-n.txt") do If %%~zA equ 0 del PSR-location-n.txt
for /F %%A in ("PSR-location-o.txt") do If %%~zA equ 0 del PSR-location-o.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][]      =  79 ]
echo ---------------------------------------
for /F %%A in ("PSR-location-p.txt") do If %%~zA equ 0 del PSR-location-p.txt
for /F %%A in ("PSR-location-q.txt") do If %%~zA equ 0 del PSR-location-q.txt
for /F %%A in ("PSR-location-r.txt") do If %%~zA equ 0 del PSR-location-r.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][]    =  86 ]
echo ---------------------------------------
for /F %%A in ("PSR-location-s.txt") do If %%~zA equ 0 del PSR-location-s.txt
for /F %%A in ("PSR-location-t.txt") do If %%~zA equ 0 del PSR-location-t.txt
for /F %%A in ("PSR-location-u.txt") do If %%~zA equ 0 del PSR-location-u.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  90 ]
echo ---------------------------------------
for /F %%A in ("PSR-location-v.txt") do If %%~zA equ 0 del PSR-location-v.txt
for /F %%A in ("PSR-location-w.txt") do If %%~zA equ 0 del PSR-location-w.txt
for /F %%A in ("PSR-location-x.txt") do If %%~zA equ 0 del PSR-location-x.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  96 ]
echo ---------------------------------------
for /F %%A in ("PSR-location-y.txt") do If %%~zA equ 0 del PSR-location-y.txt
for /F %%A in ("PSR-location-z.txt") do If %%~zA equ 0 del PSR-location-z.txt
for /F %%A in ("PSR-location-units.txt") do If %%~zA equ 0 del PSR-location-units.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------
cd ../../

echo.
echo [1] Back To Menu
echo [2] Exit
echo.
set /p op=Your Choice? 
if %op%==1 goto start
if %op%==2 goto MainExit
pause>nul
del "nul"

::Info PSR Script
:infoPSR
@echo off
color 0a
cd Tool
cd Find
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo                                 =   0 ]
echo ---------------------------------------
dir /S C:\*.psr > PSR-info-c.txt
dir /S E:\*.psr > PSR-info-e.txt
dir /S D:\*.psr > PSR-info-d.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo []                              =   5 ]
echo ---------------------------------------
dir /S Units-Data:\*.psr > PSR-info-units.txt
dir /S B:\*.psr > PSR-info-b.txt
dir /S F:\*.psr > PSR-info-f.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][]                            =  15 ]
echo ---------------------------------------
dir /S G:\*.psr > PSR-info-g.txt
dir /S H:\*.psr > PSR-info-h.txt
dir /S I:\*.psr > PSR-info-i.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][]                          =  23 ]
echo ---------------------------------------
dir /S J:\*.psr > PSR-info-j.txt
dir /S K:\*.psr > PSR-info-k.txt
dir /S L:\*.psr > PSR-info-l.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][]                        =  30 ]
echo ---------------------------------------
dir /S M:\*.psr > PSR-info-m.txt
dir /S N:\*.psr > PSR-info-n.txt
dir /S O:\*.psr > PSR-info-o.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][]                      =  38 ]
echo ---------------------------------------
dir /S P:\*.psr > PSR-info-p.txt
dir /S Q:\*.psr > PSR-info-q.txt
dir /S R:\*.psr > PSR-info-r.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][]                      =  42 ]
echo ---------------------------------------
dir /S S:\*.psr > PSR-info-s.txt
dir /S T:\*.psr > PSR-info-t.txt
dir /S U:\*.psr > PSR-info-u.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][]                    =  45 ]
echo ---------------------------------------
dir /S V:\*.psr > PSR-info-v.txt
dir /S W:\*.psr > PSR-info-w.txt
dir /S X:\*.psr > PSR-info-x.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][]                  =  48 ]
echo ---------------------------------------
dir /S Y:\*.psr > PSR-info-y.txt
dir /S Z:\*.psr > PSR-info-z.txt
dir /S A:\*.psr > PSR-info-a.txt
findstr /v "$Recycle" PSR-info-c.txt > PSR-info-c-no-bin.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][]                =  50 ]
echo ---------------------------------------
for /F %%A in ("PSR-info-a.txt") do If %%~zA equ 0 del PSR-info-a.txt
for /F %%A in ("PSR-info-b.txt") do If %%~zA equ 0 del PSR-info-b.txt
for /F %%A in ("PSR-info-c.txt") do If %%~zA equ 0 del PSR-info-c.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.           Please Wait
echo ---------------------------------------
echo [][][][][][][][][]              =  56 ]
echo ---------------------------------------
for /F %%A in ("PSR-info-d.txt") do If %%~zA equ 0 del PSR-info-d.txt
for /F %%A in ("PSR-info-e.txt") do If %%~zA equ 0 del PSR-info-e.txt
for /F %%A in ("PSR-info-f.txt") do If %%~zA equ 0 del PSR-info-f.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][]            =  63 ]
echo ---------------------------------------
for /F %%A in ("PSR-info-g.txt") do If %%~zA equ 0 del PSR-info-g.txt
for /F %%A in ("PSR-info-h.txt") do If %%~zA equ 0 del PSR-info-h.txt
for /F %%A in ("PSR-info-i.txt") do If %%~zA equ 0 del PSR-info-i.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][]          =  69 ]
echo ---------------------------------------
for /F %%A in ("PSR-info-j.txt") do If %%~zA equ 0 del PSR-info-j.txt
for /F %%A in ("PSR-info-k.txt") do If %%~zA equ 0 del PSR-info-k.txt
for /F %%A in ("PSR-info-l.txt") do If %%~zA equ 0 del PSR-info-l.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][]        =  75 ]
echo ---------------------------------------
for /F %%A in ("PSR-info-m.txt") do If %%~zA equ 0 del PSR-info-m.txt
for /F %%A in ("PSR-info-n.txt") do If %%~zA equ 0 del PSR-info-n.txt
for /F %%A in ("PSR-info-o.txt") do If %%~zA equ 0 del PSR-info-o.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][]      =  79 ]
echo ---------------------------------------
for /F %%A in ("PSR-info-p.txt") do If %%~zA equ 0 del PSR-info-p.txt
for /F %%A in ("PSR-info-q.txt") do If %%~zA equ 0 del PSR-info-q.txt
for /F %%A in ("PSR-info-r.txt") do If %%~zA equ 0 del PSR-info-r.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][]    =  86 ]
echo ---------------------------------------
for /F %%A in ("PSR-info-s.txt") do If %%~zA equ 0 del PSR-info-s.txt
for /F %%A in ("PSR-info-t.txt") do If %%~zA equ 0 del PSR-info-t.txt
for /F %%A in ("PSR-info-u.txt") do If %%~zA equ 0 del PSR-info-u.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  90 ]
echo ---------------------------------------
for /F %%A in ("PSR-info-v.txt") do If %%~zA equ 0 del PSR-info-v.txt
for /F %%A in ("PSR-info-w.txt") do If %%~zA equ 0 del PSR-info-w.txt
for /F %%A in ("PSR-info-x.txt") do If %%~zA equ 0 del PSR-info-x.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  96 ]
echo ---------------------------------------
for /F %%A in ("PSR-info-y.txt") do If %%~zA equ 0 del PSR-info-y.txt
for /F %%A in ("PSR-info-z.txt") do If %%~zA equ 0 del PSR-info-z.txt
for /F %%A in ("PSR-info-units.txt") do If %%~zA equ 0 del PSR-info-units.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------
cd ../../

echo.
echo [1] Back To Menu
echo [2] Exit
echo.
set /p op=Your Choice? 
if %op%==1 goto start
if %op%==2 goto MainExit
pause>nul
del "nul"

::Search UFO Script
:searchUFO
@echo off
color 0a
cd Tool
cd Find
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo                                 =   0 ]
echo ---------------------------------------
dir /S C:\*.ufo /b > UFO-location-c.txt
dir /S E:\*.ufo /b > UFO-location-e.txt
dir /S I:\*.ufo /b > UFO-location-i.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo []                              =   5 ]
echo ---------------------------------------
dir /S D:\*.ufo /b > UFO-location-d.txt
dir /S Units-Data:\*.ufo /b > UFO-location-units.txt
dir /S J:\*.ufo /b > UFO-location-j.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][]                            =  15 ]
echo ---------------------------------------
dir /S B:\*.ufo /b > UFO-location-b.txt
dir /S F:\*.ufo /b > UFO-location-f.txt
dir /S K:\*.ufo /b > UFO-location-k.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][]                          =  23 ]
echo ---------------------------------------
dir /S G:\*.ufo /b > UFO-location-g.txt
dir /S H:\*.ufo /b > UFO-location-h.txt
dir /S L:\*.ufo /b > UFO-location-l.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][]                        =  30 ]
echo ---------------------------------------
dir /S M:\*.ufo /b > location-m.txt
dir /S N:\*.ufo /b > location-n.txt
dir /S O:\*.ufo /b > location-o.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][]                      =  38 ]
echo ---------------------------------------
dir /S P:\*.ufo /b > UFO-location-p.txt
dir /S Q:\*.ufo /b > UFO-location-q.txt
dir /S R:\*.ufo /b > UFO-location-r.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][]                      =  42 ]
echo ---------------------------------------
dir /S S:\*.ufo /b > UFO-location-s.txt
dir /S T:\*.ufo /b > UFO-location-t.txt
dir /S U:\*.ufo /b > UFO-location-u.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][]                    =  45 ]
echo ---------------------------------------
dir /S V:\*.ufo /b > UFO-location-v.txt
dir /S W:\*.ufo /b > UFO-location-w.txt
dir /S X:\*.ufo /b > UFO-location-x.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][]                  =  48 ]
echo ---------------------------------------
dir /S Y:\*.ufo /b > UFO-location-y.txt
dir /S Z:\*.ufo /b > UFO-location-z.txt
dir /S A:\*.ufo /b > UFO-location-a.txt
findstr /v "$Recycle" UFO-location-c.txt > UFO-location-c-no-bin.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][]                =  50 ]
echo ---------------------------------------
for /F %%A in ("UFO-location-a.txt") do If %%~zA equ 0 del UFO-location-a.txt
for /F %%A in ("UFO-location-b.txt") do If %%~zA equ 0 del UFO-location-b.txt
for /F %%A in ("UFO-location-c.txt") do If %%~zA equ 0 del UFO-location-c.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.           Please Wait
echo ---------------------------------------
echo [][][][][][][][][]              =  56 ]
echo ---------------------------------------
for /F %%A in ("UFO-location-d.txt") do If %%~zA equ 0 del UFO-location-d.txt
for /F %%A in ("UFO-location-e.txt") do If %%~zA equ 0 del UFO-location-e.txt
for /F %%A in ("UFO-location-f.txt") do If %%~zA equ 0 del UFO-location-f.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][]            =  63 ]
echo ---------------------------------------
for /F %%A in ("UFO-location-g.txt") do If %%~zA equ 0 del UFO-location-g.txt
for /F %%A in ("UFO-location-h.txt") do If %%~zA equ 0 del UFO-location-h.txt
for /F %%A in ("UFO-location-i.txt") do If %%~zA equ 0 del UFO-location-i.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][]          =  69 ]
echo ---------------------------------------
for /F %%A in ("UFO-location-j.txt") do If %%~zA equ 0 del UFO-location-j.txt
for /F %%A in ("UFO-location-k.txt") do If %%~zA equ 0 del UFO-location-k.txt
for /F %%A in ("UFO-location-l.txt") do If %%~zA equ 0 del UFO-location-l.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][]        =  75 ]
echo ---------------------------------------
for /F %%A in ("UFO-location-m.txt") do If %%~zA equ 0 del UFO-location-m.txt
for /F %%A in ("UFO-location-n.txt") do If %%~zA equ 0 del UFO-location-n.txt
for /F %%A in ("UFO-location-o.txt") do If %%~zA equ 0 del UFO-location-o.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][]      =  79 ]
echo ---------------------------------------
for /F %%A in ("UFO-location-p.txt") do If %%~zA equ 0 del UFO-location-p.txt
for /F %%A in ("UFO-location-q.txt") do If %%~zA equ 0 del UFO-location-q.txt
for /F %%A in ("UFO-location-r.txt") do If %%~zA equ 0 del UFO-location-r.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][]    =  86 ]
echo ---------------------------------------
for /F %%A in ("UFO-location-s.txt") do If %%~zA equ 0 del UFO-location-s.txt
for /F %%A in ("UFO-location-t.txt") do If %%~zA equ 0 del UFO-location-t.txt
for /F %%A in ("UFO-location-u.txt") do If %%~zA equ 0 del UFO-location-u.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  90 ]
echo ---------------------------------------
for /F %%A in ("UFO-location-v.txt") do If %%~zA equ 0 del UFO-location-v.txt
for /F %%A in ("UFO-location-w.txt") do If %%~zA equ 0 del UFO-location-w.txt
for /F %%A in ("UFO-location-x.txt") do If %%~zA equ 0 del UFO-location-x.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  96 ]
echo ---------------------------------------
for /F %%A in ("UFO-location-y.txt") do If %%~zA equ 0 del UFO-location-y.txt
for /F %%A in ("UFO-location-z.txt") do If %%~zA equ 0 del UFO-location-z.txt
for /F %%A in ("UFO-location-units.txt") do If %%~zA equ 0 del UFO-location-units.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------
cd ../../

echo.
echo [1] Back To Menu
echo [2] Exit
echo.
set /p op=Your Choice? 
if %op%==1 goto start
if %op%==2 goto MainExit
pause>nul
del "nul"

::Info PSR Script
:infoUFO
@echo off
color 0a
cd Tool
cd Find
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo                                 =   0 ]
echo ---------------------------------------
dir /S C:\*.ufo > UFO-info-c.txt
dir /S E:\*.ufo > UFO-info-e.txt
dir /S D:\*.ufo > UFO-info-d.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo []                              =   5 ]
echo ---------------------------------------
dir /S Units-Data:\*.ufo > UFO-info-units.txt
dir /S B:\*.ufo > UFO-info-b.txt
dir /S F:\*.ufo > UFO-info-f.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][]                            =  15 ]
echo ---------------------------------------
dir /S G:\*.ufo > UFO-info-g.txt
dir /S H:\*.ufo > UFO-info-h.txt
dir /S I:\*.ufo > UFO-info-i.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][]                          =  23 ]
echo ---------------------------------------
dir /S J:\*.ufo > UFO-info-j.txt
dir /S K:\*.ufo > UFO-info-k.txt
dir /S L:\*.ufo > UFO-info-l.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][]                        =  30 ]
echo ---------------------------------------
dir /S M:\*.ufo > UFO-info-m.txt
dir /S N:\*.ufo > UFO-info-n.txt
dir /S O:\*.ufo > UFO-info-o.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][]                      =  38 ]
echo ---------------------------------------
dir /S P:\*.ufo > UFO-info-p.txt
dir /S Q:\*.ufo > UFO-info-q.txt
dir /S R:\*.ufo > UFO-info-r.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][]                      =  42 ]
echo ---------------------------------------
dir /S S:\*.ufo > UFO-info-s.txt
dir /S T:\*.ufo > UFO-info-t.txt
dir /S U:\*.ufo > UFO-info-u.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][]                    =  45 ]
echo ---------------------------------------
dir /S V:\*.ufo > UFO-info-v.txt
dir /S W:\*.ufo > UFO-info-w.txt
dir /S X:\*.ufo > UFO-info-x.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][]                  =  48 ]
echo ---------------------------------------
dir /S Y:\*.ufo > UFO-info-y.txt
dir /S Z:\*.ufo > UFO-info-z.txt
dir /S A:\*.ufo > UFO-info-a.txt
findstr /v "$Recycle" UFO-location-c > UFO-location-c-no-bin.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][]                =  50 ]
echo ---------------------------------------
for /F %%A in ("UFO-info-a.txt") do If %%~zA equ 0 del UFO-info-a.txt
for /F %%A in ("UFO-info-b.txt") do If %%~zA equ 0 del UFO-info-b.txt
for /F %%A in ("UFO-info-c.txt") do If %%~zA equ 0 del UFO-info-c.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.           Please Wait
echo ---------------------------------------
echo [][][][][][][][][]              =  56 ]
echo ---------------------------------------
for /F %%A in ("UFO-info-d.txt") do If %%~zA equ 0 del UFO-info-d.txt
for /F %%A in ("UFO-info-e.txt") do If %%~zA equ 0 del UFO-info-e.txt
for /F %%A in ("UFO-info-f.txt") do If %%~zA equ 0 del UFO-info-f.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][]            =  63 ]
echo ---------------------------------------
for /F %%A in ("UFO-info-g.txt") do If %%~zA equ 0 del UFO-info-g.txt
for /F %%A in ("UFO-info-h.txt") do If %%~zA equ 0 del UFO-info-h.txt
for /F %%A in ("UFO-info-i.txt") do If %%~zA equ 0 del UFO-nfo-i.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][]          =  69 ]
echo ---------------------------------------
for /F %%A in ("UFO-info-j.txt") do If %%~zA equ 0 del UFO-info-j.txt
for /F %%A in ("UFO-info-k.txt") do If %%~zA equ 0 del UFO-info-k.txt
for /F %%A in ("UFO-info-l.txt") do If %%~zA equ 0 del UFO-info-l.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][]        =  75 ]
echo ---------------------------------------
for /F %%A in ("UFO-info-m.txt") do If %%~zA equ 0 del UFO-info-m.txt
for /F %%A in ("UFO-info-n.txt") do If %%~zA equ 0 del UFO-info-n.txt
for /F %%A in ("UFO-info-o.txt") do If %%~zA equ 0 del UFO-info-o.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][]      =  79 ]
echo ---------------------------------------
for /F %%A in ("UFO-info-p.txt") do If %%~zA equ 0 del UFO-info-p.txt
for /F %%A in ("UFO-info-q.txt") do If %%~zA equ 0 del UFO-info-q.txt
for /F %%A in ("UFO-info-r.txt") do If %%~zA equ 0 del UFO-info-r.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][]    =  86 ]
echo ---------------------------------------
for /F %%A in ("UFO-info-s.txt") do If %%~zA equ 0 del UFO-info-s.txt
for /F %%A in ("UFO-info-t.txt") do If %%~zA equ 0 del UFO-info-t.txt
for /F %%A in ("UFO-info-u.txt") do If %%~zA equ 0 del UFO-info-u.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  90 ]
echo ---------------------------------------
for /F %%A in ("UFO-info-v.txt") do If %%~zA equ 0 del UFO-info-v.txt
for /F %%A in ("UFO-info-w.txt") do If %%~zA equ 0 del UFO-info-w.txt
for /F %%A in ("UFO-info-x.txt") do If %%~zA equ 0 del UFO-info-x.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  96 ]
echo ---------------------------------------
for /F %%A in ("UFO-info-y.txt") do If %%~zA equ 0 del UFO-info-y.txt
for /F %%A in ("UFO-info-z.txt") do If %%~zA equ 0 del UFO-info-z.txt
for /F %%A in ("UFO-info-units.txt") do If %%~zA equ 0 del UFO-info-units.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------
cd ../../

echo.
echo [1] Back To Menu
echo [2] Exit
echo.
set /p op=Your Choice? 
if %op%==1 goto start
if %op%==2 goto MainExit
pause>nul
del "nul"

::Search BANK Script
:searchBANK
@echo off
color 0a
cd Tool
cd Find
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo                                 =   0 ]
echo ---------------------------------------
dir /S C:\*a_bank_deposit_detail_list.psr /b > Bank-location-c.txt
dir /S E:\*a_bank_deposit_detail_list.psr /b > Bank-location-e.txt
dir /S I:\*a_bank_deposit_detail_list.psr /b > Bank-location-i.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo []                              =   5 ]
echo ---------------------------------------
dir /S D:\*a_bank_deposit_detail_list.psr /b > Bank-location-d.txt
dir /S Units-Data:\*a_bank_deposit_detail_list.psr /b > Bank-location-units.txt
dir /S J:\*a_bank_deposit_detail_list.psr /b > Bank-location-j.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][]                            =  15 ]
echo ---------------------------------------
dir /S B:\*a_bank_deposit_detail_list.psr /b > Bank-location-b.txt
dir /S F:\*a_bank_deposit_detail_list.psr /b > Bank-location-f.txt
dir /S K:\*a_bank_deposit_detail_list.psr /b > Bank-location-k.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][]                          =  23 ]
echo ---------------------------------------
dir /S G:\*a_bank_deposit_detail_list.psr /b > Bank-location-g.txt
dir /S H:\*a_bank_deposit_detail_list.psr /b > Bank-location-h.txt
dir /S L:\*a_bank_deposit_detail_list.psr /b > Bank-location-l.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][]                        =  30 ]
echo ---------------------------------------
dir /S M:\*a_bank_deposit_detail_list.psr /b > Bank-location-m.txt
dir /S N:\*a_bank_deposit_detail_list.psr /b > Bank-location-n.txt
dir /S O:\*a_bank_deposit_detail_list.psr /b > Bank-location-o.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][]                      =  38 ]
echo ---------------------------------------
dir /S P:\*a_bank_deposit_detail_list.psr /b > Bank-location-p.txt
dir /S Q:\*a_bank_deposit_detail_list.psr /b > Bank-location-q.txt
dir /S R:\*a_bank_deposit_detail_list.psr /b > Bank-location-r.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][]                      =  42 ]
echo ---------------------------------------
dir /S S:\*a_bank_deposit_detail_list.psr /b > Bank-location-s.txt
dir /S T:\*a_bank_deposit_detail_list.psr /b > Bank-location-t.txt
dir /S U:\*a_bank_deposit_detail_list.psr /b > Bank-location-u.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][]                    =  45 ]
echo ---------------------------------------
dir /S V:\*a_bank_deposit_detail_list.psr /b > Bank-location-v.txt
dir /S W:\*a_bank_deposit_detail_list.psr /b > Bank-location-w.txt
dir /S X:\*a_bank_deposit_detail_list.psr /b > Bank-location-x.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][]                  =  48 ]
echo ---------------------------------------
dir /S Y:\*a_bank_deposit_detail_list.psr /b > Bank-location-y.txt
dir /S Z:\*a_bank_deposit_detail_list.psr /b > Bank-location-z.txt
dir /S A:\*a_bank_deposit_detail_list.psr /b > Bank-location-a.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][]                =  50 ]
echo ---------------------------------------
for /F %%A in ("Bank-location-a.txt") do If %%~zA equ 0 del Bank-location-a.txt
for /F %%A in ("Bank-location-b.txt") do If %%~zA equ 0 del Bank-location-b.txt
for /F %%A in ("Bank-location-c.txt") do If %%~zA equ 0 del Bank-location-c.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.           Please Wait
echo ---------------------------------------
echo [][][][][][][][][]              =  56 ]
echo ---------------------------------------
for /F %%A in ("Bank-location-d.txt") do If %%~zA equ 0 del Bank-location-d.txt
for /F %%A in ("Bank-location-e.txt") do If %%~zA equ 0 del Bank-location-e.txt
for /F %%A in ("Bank-location-f.txt") do If %%~zA equ 0 del Bank-location-f.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][]            =  63 ]
echo ---------------------------------------
for /F %%A in ("Bank-location-g.txt") do If %%~zA equ 0 del Bank-location-g.txt
for /F %%A in ("Bank-location-h.txt") do If %%~zA equ 0 del Bank-location-h.txt
for /F %%A in ("Bank-location-i.txt") do If %%~zA equ 0 del Bank-location-i.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][]          =  69 ]
echo ---------------------------------------
for /F %%A in ("Bank-location-j.txt") do If %%~zA equ 0 del Bank-location-j.txt
for /F %%A in ("Bank-location-k.txt") do If %%~zA equ 0 del Bank-location-k.txt
for /F %%A in ("Bank-location-l.txt") do If %%~zA equ 0 del Bank-location-l.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][]        =  75 ]
echo ---------------------------------------
for /F %%A in ("Bank-location-m.txt") do If %%~zA equ 0 del Bank-location-m.txt
for /F %%A in ("Bank-location-n.txt") do If %%~zA equ 0 del Bank-location-n.txt
for /F %%A in ("Bank-location-o.txt") do If %%~zA equ 0 del Bank-location-o.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][]      =  79 ]
echo ---------------------------------------
for /F %%A in ("Bank-location-p.txt") do If %%~zA equ 0 del Bank-location-p.txt
for /F %%A in ("Bank-location-q.txt") do If %%~zA equ 0 del Bank-location-q.txt
for /F %%A in ("Bank-location-r.txt") do If %%~zA equ 0 del Bank-location-r.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][]    =  86 ]
echo ---------------------------------------
for /F %%A in ("Bank-location-s.txt") do If %%~zA equ 0 del Bank-location-s.txt
for /F %%A in ("Bank-location-t.txt") do If %%~zA equ 0 del Bank-location-t.txt
for /F %%A in ("Bank-location-u.txt") do If %%~zA equ 0 del Bank-location-u.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  90 ]
echo ---------------------------------------
for /F %%A in ("Bank-location-v.txt") do If %%~zA equ 0 del Bank-location-v.txt
for /F %%A in ("Bank-location-w.txt") do If %%~zA equ 0 del Bank-location-w.txt
for /F %%A in ("Bank-location-x.txt") do If %%~zA equ 0 del Bank-location-x.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  96 ]
echo ---------------------------------------
for /F %%A in ("Bank-location-y.txt") do If %%~zA equ 0 del Bank-location-y.txt
for /F %%A in ("Bank-location-z.txt") do If %%~zA equ 0 del Bank-location-z.txt
for /F %%A in ("Bank-location-units.txt") do If %%~zA equ 0 del Bank-location-units.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------
cd ../../

echo.
echo [1] Back To Menu
echo [2] Exit
echo.
set /p op=Your Choice? 
if %op%==1 goto start
if %op%==2 goto MainExit
pause>nul
del "nul"

:Bank-DetailBANK
@echo off
color 0a
cd Tool
cd Find
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo                                 =   0 ]
echo ---------------------------------------
dir /S C:\*a_bank_deposit_detail_list.psr > Bank-Detail-c.txt
dir /S E:\*a_bank_deposit_detail_list.psr > Bank-Detail-e.txt
dir /S D:\*a_bank_deposit_detail_list.psr > Bank-Detail-d.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo []                              =   5 ]
echo ---------------------------------------
dir /S Units-Data:\*a_bank_deposit_detail_list.psr > Bank-Detail-units.txt
dir /S B:\*a_bank_deposit_detail_list.psr > Bank-Detail-b.txt
dir /S F:\*a_bank_deposit_detail_list.psr > Bank-Detail-f.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][]                            =  15 ]
echo ---------------------------------------
dir /S G:\*a_bank_deposit_detail_list.psr > Bank-Detail-g.txt
dir /S H:\*a_bank_deposit_detail_list.psr > Bank-Detail-h.txt
dir /S I:\*a_bank_deposit_detail_list.psr > Bank-Detail-i.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][]                          =  23 ]
echo ---------------------------------------
dir /S J:\*a_bank_deposit_detail_list.psr > Bank-Detail-j.txt
dir /S K:\*a_bank_deposit_detail_list.psr > Bank-Detail-k.txt
dir /S L:\*a_bank_deposit_detail_list.psr > Bank-Detail-l.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][]                        =  30 ]
echo ---------------------------------------
dir /S M:\*a_bank_deposit_detail_list.psr > Bank-Detail-m.txt
dir /S N:\*a_bank_deposit_detail_list.psr > Bank-Detail-n.txt
dir /S O:\*a_bank_deposit_detail_list.psr > Bank-Detail-o.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][]                      =  38 ]
echo ---------------------------------------
dir /S P:\*a_bank_deposit_detail_list.psr > Bank-Detail-p.txt
dir /S Q:\*a_bank_deposit_detail_list.psr > Bank-Detail-q.txt
dir /S R:\*a_bank_deposit_detail_list.psr > Bank-Detail-r.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][]                      =  42 ]
echo ---------------------------------------
dir /S S:\*a_bank_deposit_detail_list.psr > Bank-Detail-s.txt
dir /S T:\*a_bank_deposit_detail_list.psr > Bank-Detail-t.txt
dir /S U:\*a_bank_deposit_detail_list.psr > Bank-Detail-u.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][]                    =  45 ]
echo ---------------------------------------
dir /S V:\*a_bank_deposit_detail_list.psr > Bank-Detail-v.txt
dir /S W:\*a_bank_deposit_detail_list.psr > Bank-Detail-w.txt
dir /S X:\*a_bank_deposit_detail_list.psr > Bank-Detail-x.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][]                  =  48 ]
echo ---------------------------------------
dir /S Y:\*a_bank_deposit_detail_list.psr > Bank-Detail-y.txt
dir /S Z:\*a_bank_deposit_detail_list.psr > Bank-Detail-z.txt
dir /S A:\*a_bank_deposit_detail_list.psr > Bank-Detail-a.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][]                =  50 ]
echo ---------------------------------------
for /F %%A in ("Bank-Detail-a.txt") do If %%~zA equ 0 del Bank-Detail-a.txt
for /F %%A in ("Bank-Detail-b.txt") do If %%~zA equ 0 del Bank-Detail-b.txt
for /F %%A in ("Bank-Detail-c.txt") do If %%~zA equ 0 del Bank-Detail-c.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.           Please Wait
echo ---------------------------------------
echo [][][][][][][][][]              =  56 ]
echo ---------------------------------------
for /F %%A in ("Bank-Detail-d.txt") do If %%~zA equ 0 del Bank-Detail-d.txt
for /F %%A in ("Bank-Detail-e.txt") do If %%~zA equ 0 del Bank-Detail-e.txt
for /F %%A in ("Bank-Detail-f.txt") do If %%~zA equ 0 del Bank-Detail-f.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][]            =  63 ]
echo ---------------------------------------
for /F %%A in ("Bank-Detail-g.txt") do If %%~zA equ 0 del Bank-Detail-g.txt
for /F %%A in ("Bank-Detail-h.txt") do If %%~zA equ 0 del Bank-Detail-h.txt
for /F %%A in ("Bank-Detail-i.txt") do If %%~zA equ 0 del Bank-Detail-i.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][]          =  69 ]
echo ---------------------------------------
for /F %%A in ("Bank-Detail-j.txt") do If %%~zA equ 0 del Bank-Detail-j.txt
for /F %%A in ("Bank-Detail-k.txt") do If %%~zA equ 0 del Bank-Detail-k.txt
for /F %%A in ("Bank-Detail-l.txt") do If %%~zA equ 0 del Bank-Detail-l.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][]        =  75 ]
echo ---------------------------------------
for /F %%A in ("Bank-Detail-m.txt") do If %%~zA equ 0 del Bank-Detail-m.txt
for /F %%A in ("Bank-Detail-n.txt") do If %%~zA equ 0 del Bank-Detail-n.txt
for /F %%A in ("Bank-Detail-o.txt") do If %%~zA equ 0 del Bank-Detail-o.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][]      =  79 ]
echo ---------------------------------------
for /F %%A in ("Bank-Detail-p.txt") do If %%~zA equ 0 del Bank-Detail-p.txt
for /F %%A in ("Bank-Detail-q.txt") do If %%~zA equ 0 del Bank-Detail-q.txt
for /F %%A in ("Bank-Detail-r.txt") do If %%~zA equ 0 del Bank-Detail-r.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][]    =  86 ]
echo ---------------------------------------
for /F %%A in ("Bank-Detail-s.txt") do If %%~zA equ 0 del Bank-Detail-s.txt
for /F %%A in ("Bank-Detail-t.txt") do If %%~zA equ 0 del Bank-Detail-t.txt
for /F %%A in ("Bank-Detail-u.txt") do If %%~zA equ 0 del Bank-Detail-u.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  90 ]
echo ---------------------------------------
for /F %%A in ("Bank-Detail-v.txt") do If %%~zA equ 0 del Bank-Detail-v.txt
for /F %%A in ("Bank-Detail-w.txt") do If %%~zA equ 0 del Bank-Detail-w.txt
for /F %%A in ("Bank-Detail-x.txt") do If %%~zA equ 0 del Bank-Detail-x.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  96 ]
echo ---------------------------------------
for /F %%A in ("Bank-Detail-y.txt") do If %%~zA equ 0 del Bank-Detail-y.txt
for /F %%A in ("Bank-Detail-z.txt") do If %%~zA equ 0 del Bank-Detail-z.txt
for /F %%A in ("Bank-Detail-units.txt") do If %%~zA equ 0 del Bank-Detail-units.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------
cd ../../

echo.
echo [1] Back To Menu
echo [2] Exit
echo.
set /p op=Your Choice? 
if %op%==1 goto start
if %op%==2 goto MainExit
pause>nul
del "nul"

:InvTopSearch
@echo off
color 0a
cd Tool
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo                                 =   0 ]
echo ---------------------------------------
dir /S C:\*InvoiceTop* /b > list.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo []                              =   5 ]
echo ---------------------------------------
findstr /v "$Recycle" list.txt > 1.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][]                            =  15 ]
echo ---------------------------------------
findstr /v ".ufo" 1.txt > 2.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][]                          =  23 ]
echo ---------------------------------------
findstr /v ".lnk" 2.txt > 3.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][]                        =  30 ]
echo ---------------------------------------
findstr /v ".Lnk" 3.txt > 4.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][]                      =  38 ]
echo ---------------------------------------
findstr /v ".LNK" 4.txt > 5.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][]                      =  42 ]
echo ---------------------------------------
findstr /v "_TEST AREA_" 5.txt > 6.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][]                    =  45 ]
echo ---------------------------------------
findstr /v "copy_items" 6.txt > 7.txt
findstr /v "copied" 7.txt > 8.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][]                  =  48 ]
echo ---------------------------------------
findstr /v "list_items" 8.txt > locations.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][]                =  50 ]
echo ---------------------------------------
for /f "delims=" %%L in (locations.txt) do copy "%%L" copied
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.           Please Wait
echo ---------------------------------------
echo [][][][][][][][][]              =  56 ]
echo ---------------------------------------
del "list.txt"
del "1.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][]            =  63 ]
echo ---------------------------------------
del "2.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][]          =  69 ]
echo ---------------------------------------
del "3.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][]        =  75 ]
echo ---------------------------------------
del "4.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][]      =  79 ]
echo ---------------------------------------
del "5.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][]    =  86 ]
echo ---------------------------------------
del "6.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  90 ]
echo ---------------------------------------
del "7.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  96 ]
echo ---------------------------------------
del "8.txt"
del "nul"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------

echo.
echo [1] Back To Menu
echo [2] Exit
echo.
set /p op=Your Choice?  
if %op%==1 goto start
if %op%==2 goto MainExit
pause>nul
del "nul"
del "locations.txt"
cd ../

:InvBotSearch
@echo off
color 0a
cd Tool
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo                                 =   0 ]
echo ---------------------------------------
dir /S C:\*InvoiceBottom* /b > list.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo []                              =   5 ]
echo ---------------------------------------
findstr /v "$Recycle" list.txt > 1.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][]                            =  15 ]
echo ---------------------------------------
findstr /v ".ufo" 1.txt > 2.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][]                          =  23 ]
echo ---------------------------------------
findstr /v ".lnk" 2.txt > 3.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][]                        =  30 ]
echo ---------------------------------------
findstr /v ".Lnk" 3.txt > 4.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][]                      =  38 ]
echo ---------------------------------------
findstr /v ".LNK" 4.txt > 5.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][]                      =  42 ]
echo ---------------------------------------
findstr /v "_TEST AREA_" 5.txt > 6.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][]                    =  45 ]
echo ---------------------------------------
findstr /v "copy_items" 6.txt > 7.txt
findstr /v "copied" 7.txt > 8.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][]                  =  48 ]
echo ---------------------------------------
findstr /v "list_items" 8.txt > locations.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][]                =  50 ]
echo ---------------------------------------
for /f "delims=" %%L in (locations.txt) do copy "%%L" copied
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.           Please Wait
echo ---------------------------------------
echo [][][][][][][][][]              =  56 ]
echo ---------------------------------------
del "list.txt"
del "1.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][]            =  63 ]
echo ---------------------------------------
del "2.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][]          =  69 ]
echo ---------------------------------------
del "3.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][]        =  75 ]
echo ---------------------------------------
del "4.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][]      =  79 ]
echo ---------------------------------------
del "5.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][]    =  86 ]
echo ---------------------------------------
del "6.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  90 ]
echo ---------------------------------------
del "7.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  96 ]
echo ---------------------------------------
del "8.txt"
del "nul"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------

echo.
echo [1] Back To Menu
echo [2] Exit
echo.
set /p op=Your Choice?  
if %op%==1 goto start
if %op%==2 goto MainExit
pause>nul
del "nul"
del "locations.txt"
cd ../

:RepLogoSearch
@echo off
color 0a
cd Tool
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo                                 =   0 ]
echo ---------------------------------------
dir /S C:\*report_logo* /b > list.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo []                              =   5 ]
echo ---------------------------------------
findstr /v "$Recycle" list.txt > 1.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][]                            =  15 ]
echo ---------------------------------------
findstr /v ".ufo" 1.txt > 2.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][]                          =  23 ]
echo ---------------------------------------
findstr /v ".lnk" 2.txt > 3.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][]                        =  30 ]
echo ---------------------------------------
findstr /v ".Lnk" 3.txt > 4.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][]                      =  38 ]
echo ---------------------------------------
findstr /v ".LNK" 4.txt > 5.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][]                      =  42 ]
echo ---------------------------------------
findstr /v "_TEST AREA_" 5.txt > 6.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][]                    =  45 ]
echo ---------------------------------------
findstr /v "copy_items" 6.txt > 7.txt
findstr /v "copied" 7.txt > 8.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][]                  =  48 ]
echo ---------------------------------------
findstr /v "list_items" 8.txt > locations.txt
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][]                =  50 ]
echo ---------------------------------------
for /f "delims=" %%L in (locations.txt) do copy "%%L" copied
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.           Please Wait
echo ---------------------------------------
echo [][][][][][][][][]              =  56 ]
echo ---------------------------------------
del "list.txt"
del "1.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][]            =  63 ]
echo ---------------------------------------
del "2.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][]          =  69 ]
echo ---------------------------------------
del "3.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][]        =  75 ]
echo ---------------------------------------
del "4.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][]      =  79 ]
echo ---------------------------------------
del "5.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][]    =  86 ]
echo ---------------------------------------
del "6.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading.          Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  90 ]
echo ---------------------------------------
del "7.txt"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading..         Please Wait
echo ---------------------------------------
echo [][][][][][][][][][][][][][][]  =  96 ]
echo ---------------------------------------
del "8.txt"
del "nul"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    Loading...        .Complete.
echo ---------------------------------------
echo [][][][][][][][][][][][][][][][]= 100 ]
echo ---------------------------------------

echo.
echo [1] Back To Menu
echo [2] Exit
echo.
set /p op=Your Choice?  
if %op%==1 goto start
if %op%==2 goto MainExit
pause>nul
del "nul"
del "locations.txt"
cd ../

:delete
@echo off
cls
rmdir /s /q Tool
del "list.txt"
cls
echo.
echo MADE BY BRAYDEN MOON AKA CRAZYWOLF
echo.
echo                  `+hdddd+`                                                `:ohdd+`                 
echo                 .ydhyddddy.                                            `-oyhhhhdds`                
echo                -hhyysyyyhdd/`                                        `/yhhyyyyyyhdo                
echo               `yhyyyyyyssyhdy:                                      -shdhysyyyysyhd:               
echo               +hyyyyyyysysyhdds.                                  `/hdhysyysyyyssohy`              
echo              `h/syyyyyyyyysyyhdd+`                              .+hddyysyyyysyyo:./m-              
echo              -h./sssysyyyyysysyhdh/`                          :ydddhssyyyyyyys+....h+              
echo              :y..+ysyysyysooooosyddy:`      /` `  `.   `:`  `odddho+++ossssyyh-....yy`             
echo              -y.../shhhyyso+++++osdddh+-:y-odh-y+/yh.`+hd.-+hdddy+++++++osyhddh....s+/`            
echo              .y..../ddddyo+++++++ohdddddddddddddddddyydddhdddddho+++++++++oyddd+`..s-:             
echo             .oo-.../yddhyo+++++++sdddddddddhyhddhddddddddddddddho+++++++oosyydds..-+.:             
echo             -+-/`..:sddyo+++++++ohdddddddddddyyhyyhhddddddddddddy+++++++osyhddh/..:--+.            
echo             +o.-...-syddyo+++++oddhhyyyyyyyyhyyysyyyhhyyyyyyyyyhdds++++++oshdhs:..-`.+-            
echo             -+.....-oyhdhs++++oyyyysyyyyyyyssyyyysyyyyyyyyyyyssssyyhyo++oyddyys/.....::            
echo             `/...../syyhddyosyyysyyyyyyyyyyssyhyyyhyyhyyyyyyyssysyyyyhddddyysys-.....-/`           
echo             `+:...:+syyyhdddhyysysyyyyyyyyssssyhhhhhhhhyyyyyyyyyyyyysyydddyyyyso:....//`           
echo            .++-../+syyhhddhyyyysyyyyysyysssosyyhhhhhhhhyyyssyyyyyyyyssssyhhhysyso/-...++.          
echo           `-:/..-+syyddhyyyysyyyyyyyyysssooyyhhhhhhhhhhhyyyyyyyyyyyyysssoosyhhyyyso+++:.`          
echo            `--:/+yhdhhyssoosyyyyyssyyssssssyyhhhhhhhhhhyyyyyyyyyyyyyysssooooosyhhhyo+-`            
echo            `/ydddddyso+///+ossyyyyyssssosssyyyhhhhhhhhhhyyyyyyyssssssssso++ossyyhddhhs+-`          
echo          `/shhdddhys+/::/:/+osssyysso+o++++oyyyyyyyhyyyyyysyssoosssysso+/////+ssyyhdddyo-`         
echo           `:ydddhys+::/://+syysysysyso++++++ssysssyyyysyyyso+++sssysyss+/:::/:+sssyhdddho/`        
echo          -ohdddyyso+oo/osssysssooooooso+++++ossyoosossssss+++++oyssyyyyso+//:///ossyhddhs/.        
echo         :osyddyyyssyyssyysso++/:----:///+++++ssyo+++oooss++/::/+////+ossysss+oso+sssydddyo:        
echo          `/yhysyyyssssssysso++/-........:/+++sss++++++syo+:.........-:+osysyyssyyyysyydddo:`       
echo         .sddyysyyyyysssssssss+:..:oyyso:..:++ss+++++++ss+:../oyyy+-./++oosyyysssyyysyydddyo-       
echo        `:oddyyyyyyyyyyyssso+/-.:sNhsdsyms..:+o++++++++os/.-hmsmyodmo:-/ossysysyyyyyysshddh/-       
echo       `:oydhyyyyyyyyyysso++/:..-/ddooohNMy-.++++++++++++::dMNyoosmy:-.-/+osyyyyyyyysyyhddmdo-      
echo     `-+shhhhhyyyyyssssys+++++/:.../sss+om+../+++++o++++:..yd+osso:...//+ossyyyyyyyssyyyyy/:/o/`    
echo     `--::/+syyyyyyssssss++++++/-........:////++osssss++//:-:........:++++oyyyyyyyyssyo/-:--` ``    
echo      .-:+syyyyssssyyyyys/:/+++++:--..--/++++++ossyyyyso++++//:--.-:/+++o++ssyyyssssyyss:--.``      
echo     `.-+ossssyysssssyysss/.:+oooo+++++++++++++oyyyyyyso+++++oo+++ooooo+/:osssssyyyyssoss:--.`      
echo     `-:::/oosysyyysssoo::/-..-/++ooooooo+++/++sysyyysyo+++ooooooo++//:.-/+:++osssssys+/:-...`      
echo     ..-/o+++osyysssoooo+-........--:oooo++++++ssyyyyyso++++ooooo/.....--../+ooooosyyssso:-`        
echo      `-:--:/+sssssooooooo+:......../ooo//////+syyyyyyys+++++++ooo.......:++ooooosssyyyo/:--.       
echo      .----:+osyssssssoooooo+/-...../o++++///+syysysysyys+++++++++.....:++ooooooosyyyyssso:--.      
echo     `---/osyyyyyyyssoooooooooo/-.`.:/++/////+oyysssssyyso++++++-:...:/ooooooooosssssyo::/+:.-`     
echo     .--+sssssssyssoooooooooooooo....:+//:---/ssss+:-+ssss/-://:..../oooooooooossyyysys+---.        
echo     `.++/::-:+ssssssoooooooooooo-....:......//:-......-:::........./ooooooooooossssyys+----        
echo      ``----+syyyysssssoooooooooo-...........-+syhyssyhhy/..........-ooooooooossssyssyss/-..`       
echo       `-.:ssssyyyysssssooooooooo-.........-yNMNNNNNmmmNMMd-.........+ooossssoossyyysssss-`         
echo        `/sysysyysssooooooooooooo:.-s:....`yNMMmdmNNmmdmMMNs.....:s../ooooosssssyyyyyyyo:-.         
echo        /yysyyyssoooooooooooooooo+./Nm-...`ymMMMMMMMMMMMMNmy`...-NN-.+ooooooosysssyyyysy--`         
echo       -ss+ssssoosssoooooooooooooo:./hs....-mmNMMMMMMMMMNmmo....yh/-+oooooooosys-::+ossy..          
echo       -. :/-` `:+soooooooooooooooo/-.+/....:dNNNMMMMMNNNms....+/./ooooooosssoss     `-/`           
echo               ````.:oooooooooooooooo/.:/.....+sdNNmNmds/-..../::+oooooooosss:.-                    
echo                   `++osoooooooooooooo+--//-.....-/y/-.....-//-/oooooooooos/.-                      
echo                     .+o+++ooooooooooooo/-.::+ssyhdNdysso+/:-/oooooooo+++o/-                        
echo                     ``   `/-:oo+ooooooooo+:...:/oosoo+:..-/oooooooo/o-`-`-                         
echo                           ` `+.`:o::oo+/oo++//:::---:::/+oooooo+oo+`..                             
echo                              `   `  //` :++/ooooooooooooooo-.++ `-.                                
echo                                          .: .:++-+oo/.`:o/`  `-                                    

echo.
pause>nul Echo Press any key to exit.
del "nul"
del "Tool.bat"
del "Tool.exe"

:Credits
cls
echo.
echo MADE BY BRAYDEN MOON AKA CRAZYWOLF
echo.
echo                  `+hdddd+`                                                `:ohdd+`                 
echo                 .ydhyddddy.                                            `-oyhhhhdds`                
echo                -hhyysyyyhdd/`                                        `/yhhyyyyyyhdo                
echo               `yhyyyyyyssyhdy:                                      -shdhysyyyysyhd:               
echo               +hyyyyyyysysyhdds.                                  `/hdhysyysyyyssohy`              
echo              `h/syyyyyyyyysyyhdd+`                              .+hddyysyyyysyyo:./m-              
echo              -h./sssysyyyyysysyhdh/`                          :ydddhssyyyyyyys+....h+              
echo              :y..+ysyysyysooooosyddy:`      /` `  `.   `:`  `odddho+++ossssyyh-....yy`             
echo              -y.../shhhyyso+++++osdddh+-:y-odh-y+/yh.`+hd.-+hdddy+++++++osyhddh....s+/`            
echo              .y..../ddddyo+++++++ohdddddddddddddddddyydddhdddddho+++++++++oyddd+`..s-:             
echo             .oo-.../yddhyo+++++++sdddddddddhyhddhddddddddddddddho+++++++oosyydds..-+.:             
echo             -+-/`..:sddyo+++++++ohdddddddddddyyhyyhhddddddddddddy+++++++osyhddh/..:--+.            
echo             +o.-...-syddyo+++++oddhhyyyyyyyyhyyysyyyhhyyyyyyyyyhdds++++++oshdhs:..-`.+-            
echo             -+.....-oyhdhs++++oyyyysyyyyyyyssyyyysyyyyyyyyyyyssssyyhyo++oyddyys/.....::            
echo             `/...../syyhddyosyyysyyyyyyyyyyssyhyyyhyyhyyyyyyyssysyyyyhddddyysys-.....-/`           
echo             `+:...:+syyyhdddhyysysyyyyyyyyssssyhhhhhhhhyyyyyyyyyyyyysyydddyyyyso:....//`           
echo            .++-../+syyhhddhyyyysyyyyysyysssosyyhhhhhhhhyyyssyyyyyyyyssssyhhhysyso/-...++.          
echo           `-:/..-+syyddhyyyysyyyyyyyyysssooyyhhhhhhhhhhhyyyyyyyyyyyyysssoosyhhyyyso+++:.`          
echo            `--:/+yhdhhyssoosyyyyyssyyssssssyyhhhhhhhhhhyyyyyyyyyyyyyysssooooosyhhhyo+-`            
echo            `/ydddddyso+///+ossyyyyyssssosssyyyhhhhhhhhhhyyyyyyyssssssssso++ossyyhddhhs+-`          
echo          `/shhdddhys+/::/:/+osssyysso+o++++oyyyyyyyhyyyyyysyssoosssysso+/////+ssyyhdddyo-`         
echo           `:ydddhys+::/://+syysysysyso++++++ssysssyyyysyyyso+++sssysyss+/:::/:+sssyhdddho/`        
echo          -ohdddyyso+oo/osssysssooooooso+++++ossyoosossssss+++++oyssyyyyso+//:///ossyhddhs/.        
echo         :osyddyyyssyyssyysso++/:----:///+++++ssyo+++oooss++/::/+////+ossysss+oso+sssydddyo:        
echo          `/yhysyyyssssssysso++/-........:/+++sss++++++syo+:.........-:+osysyyssyyyysyydddo:`       
echo         .sddyysyyyyysssssssss+:..:oyyso:..:++ss+++++++ss+:../oyyy+-./++oosyyysssyyysyydddyo-       
echo        `:oddyyyyyyyyyyyssso+/-.:sNhsdsyms..:+o++++++++os/.-hmsmyodmo:-/ossysysyyyyyysshddh/-       
echo       `:oydhyyyyyyyyyysso++/:..-/ddooohNMy-.++++++++++++::dMNyoosmy:-.-/+osyyyyyyyysyyhddmdo-      
echo     `-+shhhhhyyyyyssssys+++++/:.../sss+om+../+++++o++++:..yd+osso:...//+ossyyyyyyyssyyyyy/:/o/`    
echo     `--::/+syyyyyyssssss++++++/-........:////++osssss++//:-:........:++++oyyyyyyyyssyo/-:--` ``    
echo      .-:+syyyyssssyyyyys/:/+++++:--..--/++++++ossyyyyso++++//:--.-:/+++o++ssyyyssssyyss:--.``      
echo     `.-+ossssyysssssyysss/.:+oooo+++++++++++++oyyyyyyso+++++oo+++ooooo+/:osssssyyyyssoss:--.`      
echo     `-:::/oosysyyysssoo::/-..-/++ooooooo+++/++sysyyysyo+++ooooooo++//:.-/+:++osssssys+/:-...`      
echo     ..-/o+++osyysssoooo+-........--:oooo++++++ssyyyyyso++++ooooo/.....--../+ooooosyyssso:-`        
echo      `-:--:/+sssssooooooo+:......../ooo//////+syyyyyyys+++++++ooo.......:++ooooosssyyyo/:--.       
echo      .----:+osyssssssoooooo+/-...../o++++///+syysysysyys+++++++++.....:++ooooooosyyyyssso:--.      
echo     `---/osyyyyyyyssoooooooooo/-.`.:/++/////+oyysssssyyso++++++-:...:/ooooooooosssssyo::/+:.-`     
echo     .--+sssssssyssoooooooooooooo....:+//:---/ssss+:-+ssss/-://:..../oooooooooossyyysys+---.        
echo     `.++/::-:+ssssssoooooooooooo-....:......//:-......-:::........./ooooooooooossssyys+----        
echo      ``----+syyyysssssoooooooooo-...........-+syhyssyhhy/..........-ooooooooossssyssyss/-..`       
echo       `-.:ssssyyyysssssooooooooo-.........-yNMNNNNNmmmNMMd-.........+ooossssoossyyysssss-`         
echo        `/sysysyysssooooooooooooo:.-s:....`yNMMmdmNNmmdmMMNs.....:s../ooooosssssyyyyyyyo:-.         
echo        /yysyyyssoooooooooooooooo+./Nm-...`ymMMMMMMMMMMMMNmy`...-NN-.+ooooooosysssyyyysy--`         
echo       -ss+ssssoosssoooooooooooooo:./hs....-mmNMMMMMMMMMNmmo....yh/-+oooooooosys-::+ossy..          
echo       -. :/-` `:+soooooooooooooooo/-.+/....:dNNNMMMMMNNNms....+/./ooooooosssoss     `-/`           
echo               ````.:oooooooooooooooo/.:/.....+sdNNmNmds/-..../::+oooooooosss:.-                    
echo                   `++osoooooooooooooo+--//-.....-/y/-.....-//-/oooooooooos/.-                      
echo                     .+o+++ooooooooooooo/-.::+ssyhdNdysso+/:-/oooooooo+++o/-                        
echo                     ``   `/-:oo+ooooooooo+:...:/oosoo+:..-/oooooooo/o-`-`-                         
echo                           ` `+.`:o::oo+/oo++//:::---:::/+oooooo+oo+`..                             
echo                              `   `  //` :++/ooooooooooooooo-.++ `-.                                
echo                                          .: .:++-+oo/.`:o/`  `-                                    

echo.
echo [1] Back To Menu
echo [2] Exit
echo.
set /p op=Your Choice? 
if %op%==1 goto start
if %op%==2 goto MainExit
pause>nul
del "nul"

:MainExit
cls
echo.
echo MADE BY BRAYDEN MOON AKA CRAZYWOLF
echo.
echo                  `+hdddd+`                                                `:ohdd+`                 
echo                 .ydhyddddy.                                            `-oyhhhhdds`                
echo                -hhyysyyyhdd/`                                        `/yhhyyyyyyhdo                
echo               `yhyyyyyyssyhdy:                                      -shdhysyyyysyhd:               
echo               +hyyyyyyysysyhdds.                                  `/hdhysyysyyyssohy`              
echo              `h/syyyyyyyyysyyhdd+`                              .+hddyysyyyysyyo:./m-              
echo              -h./sssysyyyyysysyhdh/`                          :ydddhssyyyyyyys+....h+              
echo              :y..+ysyysyysooooosyddy:`      /` `  `.   `:`  `odddho+++ossssyyh-....yy`             
echo              -y.../shhhyyso+++++osdddh+-:y-odh-y+/yh.`+hd.-+hdddy+++++++osyhddh....s+/`            
echo              .y..../ddddyo+++++++ohdddddddddddddddddyydddhdddddho+++++++++oyddd+`..s-:             
echo             .oo-.../yddhyo+++++++sdddddddddhyhddhddddddddddddddho+++++++oosyydds..-+.:             
echo             -+-/`..:sddyo+++++++ohdddddddddddyyhyyhhddddddddddddy+++++++osyhddh/..:--+.            
echo             +o.-...-syddyo+++++oddhhyyyyyyyyhyyysyyyhhyyyyyyyyyhdds++++++oshdhs:..-`.+-            
echo             -+.....-oyhdhs++++oyyyysyyyyyyyssyyyysyyyyyyyyyyyssssyyhyo++oyddyys/.....::            
echo             `/...../syyhddyosyyysyyyyyyyyyyssyhyyyhyyhyyyyyyyssysyyyyhddddyysys-.....-/`           
echo             `+:...:+syyyhdddhyysysyyyyyyyyssssyhhhhhhhhyyyyyyyyyyyyysyydddyyyyso:....//`           
echo            .++-../+syyhhddhyyyysyyyyysyysssosyyhhhhhhhhyyyssyyyyyyyyssssyhhhysyso/-...++.          
echo           `-:/..-+syyddhyyyysyyyyyyyyysssooyyhhhhhhhhhhhyyyyyyyyyyyyysssoosyhhyyyso+++:.`          
echo            `--:/+yhdhhyssoosyyyyyssyyssssssyyhhhhhhhhhhyyyyyyyyyyyyyysssooooosyhhhyo+-`            
echo            `/ydddddyso+///+ossyyyyyssssosssyyyhhhhhhhhhhyyyyyyyssssssssso++ossyyhddhhs+-`          
echo          `/shhdddhys+/::/:/+osssyysso+o++++oyyyyyyyhyyyyyysyssoosssysso+/////+ssyyhdddyo-`         
echo           `:ydddhys+::/://+syysysysyso++++++ssysssyyyysyyyso+++sssysyss+/:::/:+sssyhdddho/`        
echo          -ohdddyyso+oo/osssysssooooooso+++++ossyoosossssss+++++oyssyyyyso+//:///ossyhddhs/.        
echo         :osyddyyyssyyssyysso++/:----:///+++++ssyo+++oooss++/::/+////+ossysss+oso+sssydddyo:        
echo          `/yhysyyyssssssysso++/-........:/+++sss++++++syo+:.........-:+osysyyssyyyysyydddo:`       
echo         .sddyysyyyyysssssssss+:..:oyyso:..:++ss+++++++ss+:../oyyy+-./++oosyyysssyyysyydddyo-       
echo        `:oddyyyyyyyyyyyssso+/-.:sNhsdsyms..:+o++++++++os/.-hmsmyodmo:-/ossysysyyyyyysshddh/-       
echo       `:oydhyyyyyyyyyysso++/:..-/ddooohNMy-.++++++++++++::dMNyoosmy:-.-/+osyyyyyyyysyyhddmdo-      
echo     `-+shhhhhyyyyyssssys+++++/:.../sss+om+../+++++o++++:..yd+osso:...//+ossyyyyyyyssyyyyy/:/o/`    
echo     `--::/+syyyyyyssssss++++++/-........:////++osssss++//:-:........:++++oyyyyyyyyssyo/-:--` ``    
echo      .-:+syyyyssssyyyyys/:/+++++:--..--/++++++ossyyyyso++++//:--.-:/+++o++ssyyyssssyyss:--.``      
echo     `.-+ossssyysssssyysss/.:+oooo+++++++++++++oyyyyyyso+++++oo+++ooooo+/:osssssyyyyssoss:--.`      
echo     `-:::/oosysyyysssoo::/-..-/++ooooooo+++/++sysyyysyo+++ooooooo++//:.-/+:++osssssys+/:-...`      
echo     ..-/o+++osyysssoooo+-........--:oooo++++++ssyyyyyso++++ooooo/.....--../+ooooosyyssso:-`        
echo      `-:--:/+sssssooooooo+:......../ooo//////+syyyyyyys+++++++ooo.......:++ooooosssyyyo/:--.       
echo      .----:+osyssssssoooooo+/-...../o++++///+syysysysyys+++++++++.....:++ooooooosyyyyssso:--.      
echo     `---/osyyyyyyyssoooooooooo/-.`.:/++/////+oyysssssyyso++++++-:...:/ooooooooosssssyo::/+:.-`     
echo     .--+sssssssyssoooooooooooooo....:+//:---/ssss+:-+ssss/-://:..../oooooooooossyyysys+---.        
echo     `.++/::-:+ssssssoooooooooooo-....:......//:-......-:::........./ooooooooooossssyys+----        
echo      ``----+syyyysssssoooooooooo-...........-+syhyssyhhy/..........-ooooooooossssyssyss/-..`       
echo       `-.:ssssyyyysssssooooooooo-.........-yNMNNNNNmmmNMMd-.........+ooossssoossyyysssss-`         
echo        `/sysysyysssooooooooooooo:.-s:....`yNMMmdmNNmmdmMMNs.....:s../ooooosssssyyyyyyyo:-.         
echo        /yysyyyssoooooooooooooooo+./Nm-...`ymMMMMMMMMMMMMNmy`...-NN-.+ooooooosysssyyyysy--`         
echo       -ss+ssssoosssoooooooooooooo:./hs....-mmNMMMMMMMMMNmmo....yh/-+oooooooosys-::+ossy..          
echo       -. :/-` `:+soooooooooooooooo/-.+/....:dNNNMMMMMNNNms....+/./ooooooosssoss     `-/`           
echo               ````.:oooooooooooooooo/.:/.....+sdNNmNmds/-..../::+oooooooosss:.-                    
echo                   `++osoooooooooooooo+--//-.....-/y/-.....-//-/oooooooooos/.-                      
echo                     .+o+++ooooooooooooo/-.::+ssyhdNdysso+/:-/oooooooo+++o/-                        
echo                     ``   `/-:oo+ooooooooo+:...:/oosoo+:..-/oooooooo/o-`-`-                         
echo                           ` `+.`:o::oo+/oo++//:::---:::/+oooooo+oo+`..                             
echo                              `   `  //` :++/ooooooooooooooo-.++ `-.                                
echo                                          .: .:++-+oo/.`:o/`  `-                                    

pause >nul
del "nul"
exit
