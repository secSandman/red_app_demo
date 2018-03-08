sudo yum update -y && install -y
sudo yum remove jre-1.7.0 -y
sudo yum install java-1.8.0-openjdk-devel -y
gradle_version=4.6
sudo mkdir /opt/gradle
wget -c http://services.gradle.org/distributions/gradle-${gradle_version}-all.zip
sudo unzip  gradle-${gradle_version}-all.zip -d /opt/gradle
sudo echo "export PATH=$PATH:/opt/gradle/gradle-4.6/bin" >> .bashrc
source ~/.bashrc
sudo yum install git -y
git clone https://github.com/secSandman/red_app_demo.git
cd /home/ec2-user/red_app_demo/complete/
gradle build
cp build/libs/red_app-0.1.0.jar /home/ec2-user/
sudo yum remove git -y
cd /home/ec2-user/
sudo rm -rf /opt/gradle
sudo rm -rf /home/ec2-user/red_app_demo
java -jar /home/ec2-user/red_app-0.1.0.jar
