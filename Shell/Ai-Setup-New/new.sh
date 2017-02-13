clrs(){
    if [ "$(uname)" == "Darwin" ]; then
        clear
    elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
        clear
    elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
        cls
    else
        clear
    fi
}
clrs
#!/bin/bash
# CHARS... 68
# .......................................[COMPLETE] = 49 CHARS
# When it is 18 chars, it is 40 dots.
# less = add more dots.
# more = less dots.
###
# Start this check long before everything to stop errors
###
red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'
install(){
  extra
}
helpinfo(){
  extra
}
uninstall(){
  extra
}
error(){
  extra
}
download(){
  extra
}
update(){
  extra
}
status(){
  extra
}
info(){
  echo -n "Collecting INFO"
  dot 43
  echo -e " [+] Instruction: ${mag}$1${end}"
  if [ "$(uname)" == "Darwin" ]; then
    echo -e " [+] OS: ${yel}MAC${end}"
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo -e " [+] OS: ${yel}LINUX${end}"
  fi
  if [[ -d "Samantha" && ! -L "Samantha" ]]; then
    echo -e " [+] Installed: ${grn}YES${end}"
  else
    echo -e " [+] Installed: ${red}NO${end}"
  fi
  if [ "$(whoami)" = "root" ]; then
    echo -e " [+] Permission Level: ${blu}w00t w00t w3 g0t r00t!${end}"
  else
    echo -e " [+] Permission Level: ${blu}PLEB${end}"
  fi
}
internet(){
  extra
}
connection(){
  extra
}
run(){
  extra
}
info_advanced(){
  echo -n "Collecting INFO"
  dot 43
  echo -e " [+] Instruction: ${mag}$1${end}"
  if [ "$(uname)" == "Darwin" ]; then
    echo -e " [+] OS: ${yel}MAC${end}"
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo -e " [+] OS: ${yel}LINUX${end}"
  fi
  if [[ -d "Samantha" && ! -L "Samantha" ]]; then
    echo -e " [+] Installed: ${grn}YES${end}"
  else
    echo -e " [+] Installed: ${red}NO${end}"
  fi
  if [ "$(whoami)" = "root" ]; then
    echo -e " [+] Permission Level: ${blu}w00t w00t w3 g0t r00t!${end}"
    if cmp -s "$old" "$new" ; then
       echo -e " [+] File Match: ${cyn}Match.${end}"
    else
       echo -e " [+] File Match: ${red}NO MATCH${end}"
       file_download
    fi
  else
    echo -e " [+] Permission Level: ${blu}PLEB${end}"
    echo -e " [+] File Match: ${cyn}CANNOT CHECK${end}"
  fi
}
logo(){
cat <<'END'
          .                                                      .
        .n                   .                 .                  n.
  .   .dP                  dP                   9b                 9b.    .
 4    qXb         .       dX                     Xb       .        dXp     t
dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb
9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP
 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP
  `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'
    `9XXXXXXXXXXXP' `9XX'          `98v8P'          `XXP' `9XXXXXXXXXXXP'
        ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~
                        )b.  .dbo.dP'`v'`9b.odb.  .dX(
                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.
                     dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
                    dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb
                    9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP
                     `'      9XXXXXX(   )XXXXXXP      `'
                              XXXX X.`v'.X XXXX
                              XP^X'`b   d'`X^XX
                              X. 9  `   '  P )X
                              `b  `       '  d'
                               `             '
END
}
if [ -z $1 ]
then
	echo -e "${red}Please use the script along with a valid instruction.\nexample: ./$0 install${end}"
exit 1
fi
dot () {
	for ((i = 0; i < $1; i++)); do echo -n "."; sleep 0.02; done; echo -e '[\033[00;32mCOMPLETE\033[00;0m]';sleep 0.6
}
doterror(){
  for ((i = 0; i < $1; i++)); do echo -n "."; sleep 0.02; done; echo -e "[${red}ERROR${end}]"
}
showMenu(){

echo "<========================================>"
echo "    Tasks"
echo "<========================================>"
echo "[1] Install"
echo "[2] Uninstall"
echo
echo "[3] Fix Error"
echo "[4] Run"
echo
echo "[5] Download All Plugins"
echo "[6] Update"
echo "[7] Status"
echo "[8] Internet Check"
echo
echo "[0] exit"
echo "<========================================>"

read -p "Please Select A Number: " mc
return $mc
}

extra(){
while [[ "$m" != "0" ]]
do
    if [[ "$m" == "1" ]]; then
        install
    elif [[ "$m" == "2" ]]; then
        uninstall
    elif [[ "$m" == "3" ]]; then
        error
    elif [[ "$m" == "4" ]]; then
        run
    elif [[ "$m" == "5" ]]; then
        download
    elif [[ "$m" == "6" ]]; then
        update
    elif [[ "$m" == "7" ]]; then
        info_advanced
    elif [[ "$m" == "8" ]]; then
        internet
    fi
    echo
    echo
    logo
    showMenu
    m=$?
done

exit 0;
}

if [ $1 == "install" ]; then
  logo
  install
elif [ $1 == "setup" ]; then
  logo
  install
elif [ $1 == "-i" ]; then
  logo
  install
elif [ $1 == "help" ]; then
  logo
  helpinfo
elif [ $1 == "-h" ]; then
  logo
  helpinfo
elif [ $1 == "menu" ]; then
  logo
  extra
elif [ $1 == "gui" ]; then
  logo
  extra
elif [ $1 == "-m" ]; then
  logo
  extra
elif [ $1 == "uninstall" ]; then
  logo
  uninstall
elif [ $1 == "remove" ]; then
  logo
  uninstall
elif [ $1 == "delete" ]; then
  logo
  uninstall
elif [ $1 == "-u" ]; then
  logo
  uninstall
elif [ $1 == "error" ]; then
  logo
  error
elif [ $1 == "fix" ]; then
  logo
  error
elif [ $1 == "-f" ]; then
  logo
  error
elif [ $1 == "download" ]; then
  logo
  download
elif [ $1 == "-d" ]; then
  logo
  download
elif [ $1 == "update" ]; then
  logo
  update
elif [ $1 == "-u" ]; then
  logo
  update
elif [ $1 == "status" ]; then
  logo
  status
elif [ $1 == "check" ]; then
  logo
  status
elif [ $1 == "-s" ]; then
  logo
  status
elif [ $1 == "info" ]; then
  logo
  info_advanced
elif [ $1 == "internet" ]; then
  logo
  internet
elif [ $1 == "connection" ]; then
  logo
  connection
elif [ $1 == "-c" ]; then
  logo
  connection
elif [ $1 == "run" ]; then
  logo
  run
elif [ $1 == "start" ]; then
  logo
  run
elif [ $1 == "begin" ]; then
  logo
  run
elif [ $1 == "-r" ]; then
  logo
  run
else
  echo "please use -m"
  exit 0
fi
