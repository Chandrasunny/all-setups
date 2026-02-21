#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.9.3.79811.zip
unzip sonarqube-9.9.3.79811.zip
amazon-linux-extras install java-openjdk17 -y
useradd sonar
chown sonar:sonar sonarqube-9.9.3.79811.zip -R
chmod 777 sonarqube-9.9.3.79811.zip -R
su - sonar

#run this on server manually
#sh /opt/sonarqube-9.9.3.79811.zip/bin/linux/sonar.sh start
#echo "user=admin & password=admin"




#sonarqube troubleshooting

sudo sysctl -w vm.max_map_count=262144

Make permanent:

echo "vm.max_map_count=262144" | sudo tee -a /etc/sysctl.conf
