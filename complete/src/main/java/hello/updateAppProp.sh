touch /home/ec2-user/red_app_demo/complete/src/main/resources/application.properties
export key="server.address="
export IP=$key$(curl http://169.254.169.254/latest/meta-data/public-ipv4)
export destdir=/home/ec2-user/red_app_demo/complete/src/main/resources/application.properties
export port="server.port=8080"
if [ -f "$destdir" ]
then
    echo "$IP" >> "$destdir"
    echo "$port" >> "$destdir"
fi
