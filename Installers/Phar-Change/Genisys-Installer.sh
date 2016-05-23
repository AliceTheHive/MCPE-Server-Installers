#!/bin/bash
echo "Running Genisys phar change! please make sure that your server is stopped. and you're in the MCPE Server directory, or it will not work."

echo "Have you stopped your server and running this script in your MCPE Server Directory?"
echo "1) Yep! :D"
echo "2) No, but i will :3"
echo "Please answer in numbers :D"
read mcpe;

case $mcpe in
    1) echo "Okay! The Genisys Installer will start now :D." && rm PocketMine-MP.phar
wget https://jenkins.mcper.cn/job/Genisys-master/403/artifact/artifact/Genisys_1.1dev-403.phar && mv 'Genisys_1.1dev-403.phar' PocketMine-MP.phar && echo "Genisys Phar Change succeeded! Please start your server to see the changes. :D";;

    2) echo "Okay! Please make sure of that. If you have completed it, please run the installer again :D.";;
esac
