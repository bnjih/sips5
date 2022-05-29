#!/bin/bash
#IMAGES
echo "
               .!YB&@@@@@@@@@@@@&#GY7^
              ?#@@@&#GGGGGGGGGB#&@@@@&BY^
            :G@@@BJ!~^^^^^^^^^~~~7YG&@@@@P^
           ^#@@@Y~^~~~~~^^^^^^~~~^^^!Y#@@@&J
          .B@@@P~~~~~^~!?J5PGBB#####BB#@@@@@B~
          7@@@G7~~~~^7B&@@@@@&#BBGPPGBB#&@@@@@Y.
          G@@@Y!~~~~!&@@&GJ7!!~~:.   ..:^!YG&@@B^
     .:^!G@@@B?!~~~^?@@@P5J~~~~~:...       ^7G@@&~
 :?PB#&@@@@@@P?!~~~^J@@&555J!~~~~~~~~~^^^^^~~!#@@#
^#@@@&GPPB@@@YJ!~~~^7@@@G5555J77!!!!77777???JY#@@@
5@@@B!^^^Y@@&JJ7~~~~~G@@@G555555555555555555PB@@@P
P@@@J~!!!G@@#JJ?~~~~~!B@@@&BPP555555555PPG#&@@@@P.
G@@&J?JJ?B@@#JJ?~~~~~^~5&@@@@@&&####&&@@@@@@@@@5
B@@#J?JJ?B@@#J?J!~~~~~~^~?5GB#&&&&&##BP5J?!5@@@!
#@@B?JJ??#@@#J?J?~~~~~~~~^^^~~~!!!~~~^^^^^^Y@@@P
@@@G?JJ??#@@#J?JJ!~~~~~~~~~~~~~~~~~~~~~~~~~Y@@@#.
@@@G?JJ??#@@#J?JJ?~~~~~~~~~~~~~~~~~~~~~~~~!Y@@@&:
@@@G?JJJ?B@@#J?JJJ7~~~~~~~~~~~~~~~~~~~~~~~?Y@@@&.
@@@G?JJJ?B@@#J?JJJJ?~~~~~~~~~~~~~~~~~~~~~??Y@@@B
&@@B?JJJ?G@@&J?JJJJJ?7!!!~~~~~~~~~~~~~!7?J?P@@@J
G@@&J??J?P@@&J?JJJJJJJJJJJ???????????JJJJJ?B@@@~
7@@@BYJ??P@@&J?JJJJJJJJJ???????????????JJ?Y&@@B
 J&@@@&##&@@@Y?JJJJJJJJ?5BBGGPP5555PP5J?J?G@@@J
  :JG#&&&@@@@5?JJJJJJJ?J&@@@@@@@@@&#PYJ??J&@@@^
     ..:.?@@@G?JJJJJJJ?5@@@&75@@@#J???JJ?P@@@B
         :&@@B?JJJJJJJ?5@@@# ^@@@G???????P@@@Y
          B@@&J??JJJ???5@@@#^^B@@#JJJJJJJG@@#:
       .:^G@@@GJJ????J5&@@@#GGB&@@@&&&&&&@@&?..
    .?5PGGB@@@@@##BB#&@@@@&BGGGB#&&&&&&&&##BGGP5J^
    .YPGGGBB#&&@@@@@@@&&#BGGGGGGGGGGGBBBBBBBBGGPJ^
       .:^!7?JY5PGGGGGGGGGGGGGGGGGGPP55YJ?7!~^.

                    BenjiScripting"
#VARIABLES
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)
utilisateur=$(whoami)
#starting
echo "Auto Update for Ubuntu 20.04"
sleep 1
echo "Initializing Updates"
printf "${RED}Ecrire les informations correctement, si elles ne sont pas correct réinstallez le script!${NORMAL}\n"

#UPDATES
sudo apt-get -y update
sudo apt-get -y upgrade
sudo timedatectl set-timezone 'Europe/Brussels'
sudo localectl set-x11-keymap be
#NEEDED
sudo apt-get -y install tree
sudo apt-get -y install net-tools
#SSH
sudo apt-get -y install openssh-server
sudo apt-get -y install proftpd-basic
sudo rm /etc/proftpd/proftpd.conf
sudo wget "https://raw.githubusercontent.com/bnjih/sips5/main/proftpd.conf" -O /etc/proftpd/proftpd.conf
sudo systemctl restart proftpd
echo "Script terminé!"
