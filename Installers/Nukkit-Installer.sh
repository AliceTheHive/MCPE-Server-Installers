#!/bin/sh
cd ~
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
"http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jre-8u60-linux-x64.rpm"
sudo yum localinstall jre-8u60-linux-x64.rpm
rm ~/jre-8u60-linux-x64.rpm #Successfully installed Java8
wget http://ci.mengcraft.com:8080/job/nukkit/lastSuccessfulBuild/artifact/target/nukkit-1.0-SNAPSHOT.jar
mv 'nukkit-1.0-SNAPSHOT.jar' nukkit.jar #Successfully installed Nukkit
echo "java -Xms128M -Xmx1G -jar nukkit.jar" > nukkitstart.sh
echo "Just do "./nukkitstart.sh" then the Setup wizard will run! Good Luck! :D"
echo "If you have accidentally crashed/stop your server, please do "./nukkitstart.sh" or screen -S then "./nukkitstart.sh", To go back to your server console/screen, Do screen -r or screen -r (screen name)"

