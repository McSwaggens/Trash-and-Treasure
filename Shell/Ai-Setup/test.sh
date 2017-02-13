#!/bin/bash
# CHARS... 68
# .......................................[COMPLETE] = 49 CHARS
# When it is 18 chars, it is 40 dots.
# less = add more dots.
# more = less dots.

###
# Start this check long before everything to stop errors
###
if [ -e "start-new.sh" ]; then
rm -rf start-new.sh
fi
red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'
old="start.sh"
new="check.sh"
if [ -e "check.sh" ]; then
  rm -rf check.sh
  curl -sL "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/Start.sh" > check.sh
else
  curl -sL "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/Start.sh" > check.sh
fi
###
#IDEAS
###
#- check if files are the same (web version and this one.)
#- Internet checker.
#- perform file check at fresh install.
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
## INSTALL parts
dot () {
	for ((i = 0; i < $1; i++)); do echo -n "."; sleep 0.02; done; echo -e '[\033[00;32mCOMPLETE\033[00;0m]';sleep 0.6
}
doterror(){
  for ((i = 0; i < $1; i++)); do echo -n "."; sleep 0.02; done; echo -e "[${red}ERROR${end}]"
}
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
