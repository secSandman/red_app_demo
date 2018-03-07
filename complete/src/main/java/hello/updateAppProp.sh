touch /home/ec2-user/red_app_demo/complete/src/main/java/hello/application.prop$
export key="server.address="
export IP=$key$(ifconfig eth0 | awk '/inet / {print $2}' | cut -c 7-) ;
export destdir=/home/ec2-user/red_app_demo/complete/src/main/java/hello/applica$
export port="server.port=80"
if [ -f "$destdir" ]
then
    echo "$IP" >> "$destdir"
    echo "$port" >> "$destdir"
fi
