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
cd ~/
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
fresh_mac(){
  echo -n "Getting ready to write files"
  dot 30
  mkdir Asher
  cd Asher
  echo " [+] Made Folder."
  echo " [+] Entered Folder."
  #CHECK FOR HOMEBREW.
  if [ -e "/usr/local/bin/brew" ]; then
    echo -n "Checking for HomeBrew"
    dot 37
    echo " [+] Status: ${grn}Found it.${end}"
    echo -n "Installing dependencies"
    dot 35
    brew install python &> /dev/null
    brew install git &> /dev/null
    brew install espeak &> /dev/null
    brew install python3 &> /dev/null
    echo " [+] Python is now installed."
    echo " [+] Git is now installed."
    echo " [+] ESPEAK is now installed."
    echo " [+] Python3 is now installed."
  else
    echo -n "Checking for HomeBrew"
    dot 37
    echo " [+] Status: ${red}Could not find it.${end}"
    echo -n "Installing homebrew"
    dot 39
    echo " [+] Homebrew is now installed."
    echo -n "Installing dependencies"
    dot 35
    brew install python &> /dev/null
    brew install git &> /dev/null
    brew install espeak &> /dev/null
    brew install python3 &> /dev/null
    echo " [+] Python is now installed."
    echo " [+] Git is now installed."
    echo " [+] ESPEAK is now installed."
    echo " [+] Python3 is now installed."
  fi
  #INSTALL THE AI
  echo -n "Installing core"
  dot 43
  git clone https://github.com/crazywolf132/Asher.git &> /dev/null
  mv ./Asher/* ./ &> /dev/null
  mkdir asher &> /dev/null
  mv ./Asher/asher/* ./asher &> /dev/null
  rm -rf ./Asher/asher &> /dev/null
  mv ./Asher ./asher &> /dev/null
  echo -e " [+] Main file is now installed."
  echo -e " [+] Core is now installed."
  pip install fuzzywuzzy &> /dev/null
  pip install git+https://github.com/crazywolf132/jsondb.git &> /dev/null
  pip install nltk &> /dev/null
  pip install pymongo &> /dev/null
  pip install python-twitter &> /dev/null
  pip install textblob &> /dev/null
  pip install python-Levenshtein &> /dev/null
  pip install SpeechRecognition &> /dev/null
  #INSTALL THE DB
  echo -n "Installing DB"
  dot 45
  git clone https://github.com/crazywolf132/Ai-DB.git &> /dev/null
  echo -e " [+] DB is now installed."
}
fresh_linux(){
  echo -n "Getting ready to write files"
  dot 30
  mkdir Asher
  cd Asher
  echo " [+] Made Folder."
  echo " [+] Entered Folder."
  #Install all the shit it needs.
  echo -n "Installing dependencies"
  dot 35
  sudo apt-get install -y python &> /dev/null
  sudo apt-get install -y pip &> /dev/null
  sudo apt-get install -y python-pip &> /dev/null
  sudo apt-get install -y git &> /dev/null
  sudo apt-get install -y espeak &> /dev/null
  sudo apt-get install -y espeak python-espeak &> /dev/null
  sudo apt-get install -y python3 &> /dev/null
  echo " [+] Python is now installed."
  echo " [+] Git is now installed."
  echo " [+] ESPEAK is now installed."
  echo " [+] Python3 is now installed."
  echo -n "Installing core"
  dot 43
  git clone https://github.com/crazywolf132/Asher.git &> /dev/null
  mv ./Asher/* ./ &> /dev/null
  mkdir asher &> /dev/null
  mv ./Asher/asher/* ./asher &> /dev/null
  rm -rf ./Asher/asher &> /dev/null
  mv ./Asher ./asher &> /dev/null
  echo -e " [+] Main file is now installed."
  echo -e " [+] Core is now installed."
  pip install fuzzywuzzy &> /dev/null
  pip install git+https://github.com/crazywolf132/jsondb.git &> /dev/null
  pip install nltk &> /dev/null
  pip install pymongo &> /dev/null
  pip install python-twitter &> /dev/null
  pip install textblob &> /dev/null
  pip install python-Levenshtein &> /dev/null
  pip install SpeechRecognition &> /dev/null
  #INSTALL THE DB
  echo -n "Installing DB"
  dot 45
  git clone https://github.com/crazywolf132/Ai-DB.git &> /dev/null
  echo -e " [+] DB is now installed."
}
file_download(){
  echo -n "Downloading File"
  dot 32
  if [ -e "start-new.sh" ]; then
    rm -rf start-new.sh
    curl -sL "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/Start.sh" > start-new.sh
  else
    curl -sL "https://raw.githubusercontent.com/crazywolf132/Ai-Setup/master/Start.sh" > start-new.sh
  fi
  echo -e " [+] File Downloaded."
}
##
# INFO
# BASIC AND ADVANCED
##
infoBasic(){
  echo -n "Collecting INFO"
  dot 43
  echo -e " [+] Instruction: ${mag}$1${end}"
  if [ "$(uname)" == "Darwin" ]; then
    echo -e " [+] OS: ${yel}MAC${end}"
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo -e " [+] OS: ${yel}LINUX${end}"
  fi
  if [[ -d "Asher" && ! -L "Asher" ]]; then
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
infoAdvanced(){
  echo -n "Collecting INFO"
  dot 43
  ## INSTRUCTION CHECKER
  echo -e " [+] Instructuin: ${mag}$1${end}"
  ## OS CHECK
  if [ "$(uname)" == "Darwin" ]; then
    echo -e " [+] OS: ${yel}MAC${end}"
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo -e " [+] OS: ${yel}LINUX${end}"
  fi
  ## INTERNET CHECK
  wget -q --spider http://google.com
  if [ $? -eq 0 ]; then
      echo -e " [+] Internet: ${grn}Yes${end}"
  else
      echo -e " [+] OS: ${red}No${end}"
  fi
  ## PERMS AND FILES
  if [ "$(whoami)" = "root" ]; then
    echo -e " [+] Permission Level: ${blu}w00t w00t w3 g0t r00t!${end}"
    if [ "$file1" = "$file2" ]; then
      echo -e " [+] File Match: ${cyn}This file has not been altered.${end}"
      mv ./setup-old.sh ./setup.sh
    else
      echo -e " [+] File Match: ${cyn}This file has been changed. Downloading fresh one.${end}"
      #DOWNLOAD NEW ONE AND EXIT.
    fi
  else
    echo -e " [+] Permission Level: ${blu}PLEB${end}"
    echo -e " [+] File Match: ${cyn}CANNOT CHECK${end}"
  fi
  ## INSTALL CHECKER
  if [[ -d "Asher" && ! -L "Asher" ]]; then
    echo -e " [+] Installed: ${grn}YES${end}"
  else
    echo -e " [+] Installed: ${red}NO${end}"
  fi
  # Check Architecture
  ##architecture=$(uname -m)
  ##echo -e " [+] Architecture:${grn}$tecreset $architecture${end}"
  # Check Kernel Release
  ##kernelrelease=$(uname -r)
  ##echo -e " [+] Kernel Release:${grn}$tecreset $kernelrelease${end}"
  # Check External IP
  ##externalip=$(curl -s ipecho.net/plain;echo)
  ##echo -e " [+] External IP: ${grn}$tecreset $externalip${end}"
  # Check System Uptime
  ##tecuptime=$(uptime | awk '{print $3,$4}' | cut -f1 -d,)
  ##echo -e " [+] System Uptime Days/(HH:MM):${grn}$tecreset $tecuptime${end}"
}

##
# Install instructions
# THIS WILL BE MASSIVE!
##

install(){
  if [ "$(uname)" == "Darwin" ]; then
    if [[ -d "Asher" && ! -L "Asher" ]]; then
      rm -rf Asher
      fresh_mac
    else
      fresh_mac
    fi
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    if [[ -d "Asher" && ! -L "Asher" ]]; then
      rm -rf Asher
      fresh_linux
    else
      fresh_linux
    fi
  fi
}
error(){
  if [ "$(uname)" == "Darwin" ]; then
    if [[ -d "Asher" && ! -L "Asher" ]]; then
      rm -rf Asher
      fresh_mac
    else
      fresh_mac
    fi
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    if [[ -d "Asher" && ! -L "Asher" ]]; then
      rm -rf Asher
      fresh_linux
    else
      fresh_linux
    fi
  fi
}
download(){
  if [ "$(uname)" == "Darwin" ]; then
    if [[ -d "Asher" && ! -L "Asher" ]]; then
      cd Asher
      cd asher
      cd plugins
      ## DOWNLOAD THEM ALL!
    else
      fresh_mac
      cd asher
      cd plugins
      ## DOWNLOAD THEM ALL!
    fi
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    if [[ -d "Asher" && ! -L "Asher" ]]; then
      cd Asher
      cd asher
      cd plugins
        ## DOWNLOAD THEM ALL!
    else
      fresh_linux
      cd asher
      cd plugins
        ## DOWNLOAD THEM ALL!
    fi
  fi
}
update(){
  if [ "$(uname)" == "Darwin" ]; then
    if [[ -d "Asher" && ! -L "Asher" ]]; then
      cd Asher
    else
      fresh_mac
    fi
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    if [[ -d "Asher" && ! -L "Asher" ]]; then
      cd Asher
    else
      fresh_linux
    fi
  fi
}
uninstall(){
  if [[ -d "Asher" && ! -L "Asher" ]]; then
    echo -n "Uninstalling AI"
    dot 43
    rm -rf Asher &> /dev/null
    echo " [+] Removed AI"
  else
    echo -n "Uninstalling AI"
    doterror 43
    echo " [+] There was nothing to uninstall"
  fi
}
check(){
  if [[ -d "Asher" && ! -L "Asher" ]]; then
    cd Asher
    if [ -e "application.py" ]; then
      if [[ -d "asher" && ! -L "asher" ]]; then
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI Integrity"
          dot 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${grn}FOUND${end}"
          echo -e " [+] DB: ${grn}FOUND${end}"
          echo -e " [+] Main file: ${grn}FOUND${end}"
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${grn}FOUND${end}"
          echo -e " [+] DB: ${red}MISSING${end}"
          echo -e " [+] Main file: ${grn}FOUND${end}"
        fi
      else
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${red}MISSING${end}"
          echo -e " [+] DB: ${grn}FOUND${end}"
          echo -e " [+] Main file: ${grn}FOUND${end}"
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${red}MISSING${end}"
          echo -e " [+] DB: ${red}MISSING${end}"
          echo -e " [+] Main file: ${grn}FOUND${end}"
        fi
      fi
    else
      if [[ -d "asher" && ! -L "asher" ]]; then
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${grn}FOUND${end}"
          echo -e " [+] DB: ${grn}FOUND${end}"
          echo -e " [+] Main file: ${red}MISSING${end}"
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${grn}FOUND${end}"
          echo -e " [+] DB: ${red}MISSING${end}"
          echo -e " [+] Main file: ${red}MISSING${end}"
        fi
      else
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${red}MISSING${end}"
          echo -e " [+] DB: ${grn}FOUND${end}"
          echo -e " [+] Main file: ${red}MISSING${end}"
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${red}MISSING${end}"
          echo -e " [+] DB: ${red}MISSING${end}"
          echo -e " [+] Main file: ${red}MISSING${end}"
        fi
      fi
    fi
  else
    echo -n "Checking AI Integrity"
    doterror 37
    echo -e " [+] Asher: ${red}MISSING${end}"
    echo -e " [+] Core files: ${red}MISSING${end}"
    echo -e " [+] DB: ${red}MISSING${end}"
    echo -e " [+] Main file: ${red}MISSING${end}"
  fi
}
run(){
  if [[ -d "Asher" && ! -L "Asher" ]]; then
    cd Asher
    if [ -e "application.py" ]; then
      if [[ -d "asher" && ! -L "asher" ]]; then
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI Integrity"
          dot 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${grn}FOUND${end}"
          echo -e " [+] DB: ${grn}FOUND${end}"
          echo -e " [+] Main file: ${grn}FOUND${end}"
          echo -n "Starting AI"
          dot 47
          python application.py
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${grn}FOUND${end}"
          echo -e " [+] DB: ${red}MISSING${end}"
          echo -e " [+] Main file: ${grn}FOUND${end}"
        fi
      else
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${red}MISSING${end}"
          echo -e " [+] DB: ${grn}FOUND${end}"
          echo -e " [+] Main file: ${grn}FOUND${end}"
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${red}MISSING${end}"
          echo -e " [+] DB: ${red}MISSING${end}"
          echo -e " [+] Main file: ${grn}FOUND${end}"
        fi
      fi
    else
      if [[ -d "asher" && ! -L "asher" ]]; then
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${grn}FOUND${end}"
          echo -e " [+] DB: ${grn}FOUND${end}"
          echo -e " [+] Main file: ${red}MISSING${end}"
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${grn}FOUND${end}"
          echo -e " [+] DB: ${red}MISSING${end}"
          echo -e " [+] Main file: ${red}MISSING${end}"
        fi
      else
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${red}MISSING${end}"
          echo -e " [+] DB: ${grn}FOUND${end}"
          echo -e " [+] Main file: ${red}MISSING${end}"
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [+] Asher: ${grn}FOUND${end}"
          echo -e " [+] Core files: ${red}MISSING${end}"
          echo -e " [+] DB: ${red}MISSING${end}"
          echo -e " [+] Main file: ${red}MISSING${end}"
        fi
      fi
    fi
  else
    echo -n "Checking AI Integrity"
    doterror 37
    echo -e " [+] Asher: ${red}MISSING${end}"
    echo -e " [+] Core files: ${red}MISSING${end}"
    echo -e " [+] DB: ${red}MISSING${end}"
    echo -e " [+] Main file: ${red}MISSING${end}"
  fi
}
runold(){
  if [[ -d "Asher" && ! -L "Asher" ]]; then
    cd Asher
    echo -n "Starting AI"
    dot 47
    python application.py
  else
    echo -n "Checking for AI"
    doterror 43
    echo -e " [+] Could not find AI"
    echo -e "\n${red}Please use the script with the install instruction. ./$0 install${end}"
  fi
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
##LEAVE
if [ $1 == "install" ]; then
  infoBasic
  install
elif [ $1 == "update" ]; then
  infoBasic
  update
elif [ $1 == "download" ]; then
  infoBasic
  download
elif [ $1 == "error" ]; then
  if [ "$(whoami)" = "root" ]; then
    infoBasic
    error
  else
    echo -e "${red}Please use the script along with root privileges.\nexample: sudo ./$0 fix\nDo not use anything after it.${end}"
    exit 1
  fi
elif [ $1 == "fix" ]; then
  if [ "$(whoami)" = "root" ]; then
    infoBasic
    error
  else
    echo -e "${red}Please use the script along with root privileges.\nexample: sudo ./$0 fix\nDo not use anything after it.${end}"
    exit 1
  fi
elif [ $1 == "remove" ]; then
  if [ "$(whoami)" = "root" ]; then
    infoBasic
    uninstall
  else
    echo -e "${red}Please use the script along with root privileges.\nexample: sudo ./$0 fix\nDo not use anything after it.${end}"
    exit 1
  fi
elif [ $1 == "uninstall" ]; then
  if [ "$(whoami)" = "root" ]; then
    infoBasic
    uninstall
  else
    echo -e "${red}Please use the script along with root privileges.\nexample: sudo ./$0 fix\nDo not use anything after it.${end}"
    exit 1
  fi
elif [ $1 == "delete" ]; then
  if [ "$(whoami)" = "root" ]; then
    infoBasic
    uninstall
  else
    echo -e "${red}Please use the script along with root privileges.\nexample: sudo ./$0 fix\nDo not use anything after it.${end}"
    exit 1
  fi
elif [ $1 == "start" ]; then
  infoBasic
  run
elif [ $1 == "run" ]; then
  infoBasic
  run
elif [ $1 == "status" ]; then
  infoAdvanced
  check
elif [ $1 == "check" ]; then
  infoAdvanced
  check
else
  echo -m "${red}Seen as you did not select a function, it will naturally install.${end}"
  infoBasic
  install
fi
##LEAVE





#echo -n "Getting ready to write files."
#dot 20
#echo " [+] SSL entry point on 127.0.0.1:1337"
#echo -n "Chaining proxies"
#dot 42
#echo ' [+] 7/7 proxies chained {BEL>AUS>JAP>CHI>NOR>FIN>UKR}'
#echo -n "Launching port knocking sequence"
#dot 26
#echo " [+] Knock on TCP<143,993,587,456,25,587,993,80>"
#echo -n "Sending PCAP datagrams for fragmentation overlap"
#dot 10
#echo " [+] Stack override ***** w00t w00t g0t r00t!"
echo -en '\n['
for i in $(seq 1 65); do echo -n "="; sleep 0.01; done
echo -e '>]\n'
#sleep 0.5
#echo -n "root@$1:~# "
#sleep 5
#echo ""
exit 0
