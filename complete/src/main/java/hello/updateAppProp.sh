touch application.properties
export key="server.address="
export IP=$key$(ifconfig eth0 | awk '/inet / {print $2}' | cut -c 7-) ;
export destdir=/home/red_app_demo/complete/src/main/java/hello/application.properties
export port="server.port=80"

if [ -f "$destdir" ]
then 
    echo "$IP" >> "$destdir"
    echo "$port" >> "$destdir"
fi
