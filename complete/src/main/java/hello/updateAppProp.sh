touch red_app_demo/complete/src/application.properties
export key="server.address="
export IP=$key$(curl http://169.254.169.254/latest/meta-data/public-ipv4)
export destdir=red_app_demo/complete/src/application.properties
export port="server.port=99"
if [ -f "$destdir" ]
then
    echo "$IP" >> "$destdir"
    echo "$port" >> "$destdir"
fi
