#!/bin/bash
#Cleat file at the beginning of the process
echo "" > liveHosts;
# Loop in the range of 1 to 255
for i in {1..255};
        do
                echo "[+] pinging 10.0.2.$i";
                ping -c 5 10.0.2.$i | grep "bytes from" >> liveHosts;
done
echo "Done!"
cat liveHosts;
