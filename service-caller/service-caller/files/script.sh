#!/bin/bash
while true; do
    curl http://nginx-web:80
    echo "Time: $(date)"
    sleep 5
done
