#!/bin/bash

echo "Serving forever..."
while true; do 
    echo -ne "HTTP/1.0 200 OK\r\n\r\n$(cat /host-sys/class/power_supply/ACAD/online)" | nc -N -l -p 5555
    test $? -gt 0 && break
done
