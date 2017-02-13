################################################################################
## This is a multipurpose Shell script developed for specific use of Asher Ai,
## If this script is used for any other projects and causes errors, there is no
## warrenty at all. The full rights to this install lays in the hands of the
## developer: CrazyWolf132 as of 2016 when this script was made. We do not hold
## any responsibility for what others do with this script, or if this script
## destroys your computer when used for alternate purposes than what it was made
## for.
################################################################################

################################################################################
## This script is highly complicated. If you choose to edit the file please make
## comments of where you changed things, and create a pull to the main repo.
## Also, PLEASE TEST YOUR CHANGES FIRST!
################################################################################
cd ~/

red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'

old="Asher.sh"
new="check.sh"

if cmp -s "$old" "$new" ; then
   echo -e " [${mag}+${end}] File Match: ${cyn}Match.${end}"
else
   echo -e " [${mag}+${end}] File Match: ${red}NO MATCH${end}"
   file_download
fi

if [ "$(uname)" == "Darwin" ]; then
  os="MAC"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  os="LINUX"
fi
if [ "$(whoami)" = "root" ]; then
  root="root"
else
  root="user"
fi

dot () {
	for ((i = 0; i < $1; i++)); do echo -n "."; sleep 0.02; done; echo -e '[\033[00;32mCOMPLETE\033[00;0m]';sleep 0.6
}
doterror(){
  for ((i = 0; i < $1; i++)); do echo -n "."; sleep 0.02; done; echo -e "[${red}ERROR${end}]"
}
naming(){
  if [ $0 != "Asher.sh" ]; then
    echo -e "${red}We have noticed that your installer does not have the correct name.\nWe have fixed this error by renaming the installer to Asher.sh\nto run the installer use: bash Asher.sh <argument>${end}"
    mv $0 ./Asher.sh
    exit 1
  fi
}
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
part0_mac(){
  echo -n "Getting ready to write files"
  dot 30
  mkdir Asher
  cd Asher
  echo " [${mag}+${end}] Made Folder."
  echo " [${mag}+${end}] Entered Folder."
  #CHECK FOR HOMEBREW.
  if [ -e "/usr/local/bin/brew" ]; then
    echo -n "Checking for HomeBrew"
    dot 37
    echo " [${mag}+${end}] Status: ${grn}Found it.${end}"
    echo -n "Installing dependencies"
    dot 35
    brew install python &> /dev/null
    brew install git &> /dev/null
    brew install espeak &> /dev/null
    brew install python3 &> /dev/null
    echo " [${mag}+${end}] Python is now installed."
    echo " [${mag}+${end}] Git is now installed."
    echo " [${mag}+${end}] ESPEAK is now installed."
    echo " [${mag}+${end}] Python3 is now installed."
  else
    echo -n "Checking for HomeBrew"
    dot 37
    echo " [${mag}+${end}] Status: ${red}Could not find it.${end}"
    echo -n "Installing homebrew"
    dot 39
    echo " [${mag}+${end}] Homebrew is now installed."
    echo -n "Installing dependencies"
    dot 35
    brew install python &> /dev/null
    brew install git &> /dev/null
    brew install espeak &> /dev/null
    brew install python3 &> /dev/null
    echo " [${mag}+${end}] Python is now installed."
    echo " [${mag}+${end}] Git is now installed."
    echo " [${mag}+${end}] ESPEAK is now installed."
    echo " [${mag}+${end}] Python3 is now installed."
  fi
}
part0_linux(){
  echo -n "Getting ready to write files"
  dot 30
  mkdir Asher
  cd Asher
  echo " [${mag}+${end}] Made Folder."
  echo " [${mag}+${end}] Entered Folder."
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
  echo " [${mag}+${end}] Python is now installed."
  echo " [${mag}+${end}] Git is now installed."
  echo " [${mag}+${end}] ESPEAK is now installed."
  echo " [${mag}+${end}] Python3 is now installed."
}
part1(){
  echo -n "Installing core"
  dot 43
  git clone https://github.com/crazywolf132/Asher.git &> /dev/null
  mv ./Asher/* ./ &> /dev/null
  mkdir asher &> /dev/null
  mv ./Asher/asher/* ./asher &> /dev/null
  rm -rf ./Asher/asher &> /dev/null
  mv ./Asher ./asher &> /dev/null
  echo -e " [${mag}+${end}] Main file is now installed."
  echo -e " [${mag}+${end}] Core is now installed."
}
part2(){
  echo -n "Installing ${red}critical${end} library"
  dot 31
  pip install git+https://github.com/crazywolf132/jsondb.git &> /dev/null
  echo -e " [${mag}+${end}] Library installed."
}
part3(){
  echo -n "Installing extra libraries"
  dot 32
  pip install fuzzywuzzy &> /dev/null
  pip install nltk &> /dev/null
  pip install pymongo &> /dev/null
  pip install python-twitter &> /dev/null
  pip install textblob &> /dev/null
  pip install python-Levenshtein &> /dev/null
  pip install SpeechRecognition &> /dev/null
  echo -e " [${mag}+${end}] FuzzyWuzzy is now installed."
  echo -e " [${mag}+${end}] NLTK is now installed."
  echo -e " [${mag}+${end}] PyMongo is now installed."
  echo -e " [${mag}+${end}] Python-Twitter is now installed."
  echo -e " [${mag}+${end}] TextBlob is now installed."
  echo -e " [${mag}+${end}] python-Levenshtein is now installed."
  echo -e " [${mag}+${end}] SpeechRecognition is now installed."
}
part4(){
  echo -n "Installing DB"
  dot 45
  git clone https://github.com/crazywolf132/Ai-DB.git &> /dev/null
  echo -e " [${mag}+${end}] DB is now installed."
}
install(){
  if [ $os == "MAC" ]; then
      part0_mac
  elif [ $os == "Linux" ]; then
      part0_linux
  fi
  part1
  part2
  part3
  part4
}
error(){
  if [[ -d "Asher" && ! -L "Asher" ]]; then
    cd Asher
    if [ -e "application.py" ]; then
      if [[ -d "asher" && ! -L "asher" ]]; then
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI for errors"
          dot 36
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] DB: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Main file: ${grn}FOUND${end}"
          echo ""
          echo -e " [${mag}+${end}] No errors found. Will start."
          cd ~/
          run
        else
          echo -n "Checking AI for errors"
          doterror 36
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] DB: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] Main file: ${grn}FOUND${end}"
          part4
          cd ~/
          run
        fi
      else
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI for errors"
          doterror 36
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] DB: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Main file: ${grn}FOUND${end}"
          part1
          cd ~/
          run
        else
          echo -n "Checking AI for errors"
          doterror 36
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] DB: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] Main file: ${grn}FOUND${end}"
          part1
          part4
          cd ~/
          run
        fi
      fi
    else
      if [[ -d "asher" && ! -L "asher" ]]; then
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI for errors"
          doterror 36
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] DB: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Main file: ${red}MISSING${end}"
          echo -n "Installing Main file"
          dot 38
          curl -sL https://raw.github.com/crazywolf132/Asher/master/application.py > application.py
          echo -e " [${mag}+${end}] Installed Main file."
          cd ~/
          run
        else
          echo -n "Checking AI for errors"
          doterror 36
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] DB: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] Main file: ${red}MISSING${end}"
          part4
          echo -n "Installing Main file"
          dot 38
          curl -sL https://raw.github.com/crazywolf132/Asher/master/application.py > application.py
          echo -e " [${mag}+${end}] Installed Main file."
          cd ~/
          run
        fi
      else
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI for errors"
          doterror 36
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] DB: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Main file: ${red}MISSING${end}"
          part1
          echo -n "Installing Main file"
          dot 38
          curl -sL https://raw.github.com/crazywolf132/Asher/master/application.py > application.py
          echo -e " [${mag}+${end}] Installed Main file."
          cd ~/
          run
        else
          echo -n "Checking AI for errors"
          doterror 36
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] DB: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] Main file: ${red}MISSING${end}"
          part1
          part4
          echo -n "Installing Main file"
          dot 38
          curl -sL https://raw.github.com/crazywolf132/Asher/master/application.py > application.py
          echo -e " [${mag}+${end}] Installed Main file."
          cd ~/
          run
        fi
      fi
    fi
  else
    echo -n "Checking AI for errors"
    doterror 36
    echo -e " [${mag}+${end}] Asher: ${red}MISSING${end}"
    echo -e " [${mag}+${end}] Core files: ${red}MISSING${end}"
    echo -e " [${mag}+${end}] DB: ${red}MISSING${end}"
    echo -e " [${mag}+${end}] Main file: ${red}MISSING${end}"
    install
    clrs
    logo
    infoBasic
    error
  fi
}
update(){
if [-e "Asher.sh"]; then
  rm -rf Asher.sh
  curl -L "https://raw.github.com/crazywolf132/Ai-Setup/master/Asher.sh" > Asher.sh
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
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] DB: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Main file: ${grn}FOUND${end}"
          echo -n "Starting AI"
          dot 47
          python application.py
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] DB: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] Main file: ${grn}FOUND${end}"
        fi
      else
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] DB: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Main file: ${grn}FOUND${end}"
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] DB: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] Main file: ${grn}FOUND${end}"
        fi
      fi
    else
      if [[ -d "asher" && ! -L "asher" ]]; then
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] DB: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Main file: ${red}MISSING${end}"
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] DB: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] Main file: ${red}MISSING${end}"
        fi
      else
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] DB: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Main file: ${red}MISSING${end}"
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] DB: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] Main file: ${red}MISSING${end}"
        fi
      fi
    fi
  else
    echo -n "Checking AI Integrity"
    doterror 37
    echo -e " [${mag}+${end}] Asher: ${red}MISSING${end}"
    echo -e " [${mag}+${end}] Core files: ${red}MISSING${end}"
    echo -e " [${mag}+${end}] DB: ${red}MISSING${end}"
    echo -e " [${mag}+${end}] Main file: ${red}MISSING${end}"
  fi
}
infoBasic(){
  echo -n "Collecting INFO"
  dot 43
  if [ "$(uname)" == "Darwin" ]; then
    echo -e " [${mag}+${end}] OS: ${yel}MAC${end}"
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo -e " [${mag}+${end}] OS: ${yel}LINUX${end}"
  fi
  if [[ -d "Asher" && ! -L "Asher" ]]; then
    echo -e " [${mag}+${end}] Installed: ${grn}YES${end}"
  else
    echo -e " [${mag}+${end}] Installed: ${red}NO${end}"
  fi
  if [ "$(whoami)" = "root" ]; then
    echo -e " [${mag}+${end}] Permission Level: ${blu}w00t w00t w3 g0t r00t!${end}"
    if cmp -s "$old" "$new" ; then
       echo -e " [${mag}+${end}] File Match: ${cyn}Match.${end}"
    else
       echo -e " [${mag}+${end}] File Match: ${red}NO MATCH${end}"
       file_download
    fi
  else
    echo -e " [${mag}+${end}] Permission Level: ${blu}PLEB${end}"
    echo -e " [${mag}+${end}] File Match: ${cyn}CANNOT CHECK${end}"
  fi
}
infoAdvanced(){
clrs
}
internet(){
clrs
}
status(){
  if [[ -d "Asher" && ! -L "Asher" ]]; then
    cd Asher
    if [ -e "application.py" ]; then
      if [[ -d "asher" && ! -L "asher" ]]; then
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI Integrity"
          dot 37
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] DB: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Main file: ${grn}FOUND${end}"
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] DB: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] Main file: ${grn}FOUND${end}"
        fi
      else
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] DB: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Main file: ${grn}FOUND${end}"
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] DB: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] Main file: ${grn}FOUND${end}"
        fi
      fi
    else
      if [[ -d "asher" && ! -L "asher" ]]; then
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] DB: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Main file: ${red}MISSING${end}"
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] DB: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] Main file: ${red}MISSING${end}"
        fi
      else
        if [[ -d "Ai-DB" && ! -L "Ai-DB" ]]; then
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] DB: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Main file: ${red}MISSING${end}"
        else
          echo -n "Checking AI Integrity"
          doterror 37
          echo -e " [${mag}+${end}] Asher: ${grn}FOUND${end}"
          echo -e " [${mag}+${end}] Core files: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] DB: ${red}MISSING${end}"
          echo -e " [${mag}+${end}] Main file: ${red}MISSING${end}"
        fi
      fi
    fi
  else
    echo -n "Checking AI Integrity"
    doterror 37
    echo -e " [${mag}+${end}] Asher: ${red}MISSING${end}"
    echo -e " [${mag}+${end}] Core files: ${red}MISSING${end}"
    echo -e " [${mag}+${end}] DB: ${red}MISSING${end}"
    echo -e " [${mag}+${end}] Main file: ${red}MISSING${end}"
  fi
  if [ $root = "root" ]; then
    if cmp -s "$old" "$new" ; then
      filesmatch="TRUE"
    else
      filesmatch="FALSE"
      file_download
    fi
  else
  filesmatch="NO ROOT"
  fi
}
helpinfo(){
  echo -n "Loading all commands"
  dot 38
  echo "${cyn}help${end}       - Gives you this window."
  echo "${cyn}commands${end}    - Gives you this window."
  echo "${cyn}-h${end}          - Gives you this window."
  echo ""
  echo "${cyn}install${end}     - Installs Asher and everything to do with him."
  echo "${cyn}setup${end}       - Installs Asher and everything to do with him."
  echo "${cyn}-i${end}          - Installs Asher and everything to do with him."
  echo ""
  echo "${cyn}menu${end}        - Gives you a GUI for selecting all the different options."
  echo "${cyn}gui${end}         - Gives you a GUI for selecting all the different options."
  echo "${cyn}-m${end}          - Gives you a GUI for selecting all the different options."
  echo ""
  echo "${cyn}uninstall${end}   - Uninstalls Asher and everything to do with him."
  echo "${cyn}remove${end}      - Uninstalls Asher and everything to do with him."
  echo "${cyn}delete${end}      - Uninstalls Asher and everything to do with him."
  echo ""
  echo "${cyn}error${end}       - Checks for what is causing the error, and fixes it."
  echo "${cyn}fix${end}         - Checks for what is causing the error, and fixes it."
  echo "${cyn}-f${end}          - Checks for what is causing the error, and fixes it."
  echo ""
  echo "${cyn}download${end}    - Installs all the plugins from Github."
  echo "${cyn}-d${end}          - Installs all the plugins from Github."
  echo ""
  echo "${cyn}update${end}      - Updates core files of Asher, but not the knollege base."
  echo "${cyn}-u${end}          - Updates core files of Asher, but not the knollege base."
  echo ""
  echo "${cyn}status${end}      - Gathers the integrity of Asher's core files."
  echo "${cyn}check${end}       - Gathers the integrity of Asher's core files."
  echo "${cyn}-s${end}          - Gathers the integrity of Asher's core files."
  echo ""
  echo "${cyn}info${end}        - Gives you extra info you made need."
  echo ""
  echo "${cyn}internet${end}    - Checks if you have access to the servers."
  echo "${cyn}connection${end}  - Checks if you have access to the servers."
  echo "${cyn}-c${end}          - Checks if you have access to the servers."
  echo ""
  echo "${cyn}run${end}         - Runs Asher."
  echo "${cyn}start${end}       - Runs Asher."
  echo "${cyn}begin${end}       - Runs Asher."
  echo "${cyn}-r${end}          - Runs Asher."
  echo ""
  echo "${cyn}part 0-4${end}    - Installs selected part of Intallation."
  echo "${cyn}0${end}           - Installs python and git."
  echo "${cyn}1${end}           - Installs main part of Asher."
  echo "${cyn}2${end}           - Installs first main dependency."
  echo "${cyn}3${end}           - Installs rest of dependencies."
  echo "${cyn}4${end}           - Installs knollege base of Asher."

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
elif [ $1 == "error" ]; then
  logo
  infoBasic
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
  infoBasic
  status
elif [ $1 == "check" ]; then
  logo
  status
elif [ $1 == "-s" ]; then
  logo
  status
elif [ $1 == "info" ]; then
  logo
  infoAdvanced
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
elif [ $1 == "part" ] && [ $2 == "0" ]; then
  if [ "$(uname)" == "Darwin" ]; then
      part0_mac
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
      part0_linux
  fi
elif [ $1 == "part" ] && [ $2 == "1" ]; then
  logo
  part1
elif [ $1 == "part" ] && [ $2 == "2" ]; then
  logo
  part2
elif [ $1 == "part" ] && [ $2 == "3" ]; then
  logo
  part3
elif [ $1 == "part" ] && [ $2 == "4" ]; then
  logo
  part4
elif [ $1 == "part" ] && [ $2 == "5" ]; then
  logo
  part5
else
  clrs
  logo
  echo "Please use -m"
  exit 0
fi
