#!/bin/bash

version=$1

rm -rf binary &> /dev/nullls

echo -e "\n\n\nbuild kiwenlau/compile-hadoop image...\n\n\n"
sudo docker build -t kiwenlau/compile-hadoop .


echo -e "\n\n\ncompile hadoop within container...\n\n\n"
sudo docker run -v $(pwd)/binary:/binary kiwenlau/compile-hadoop /root/compile.sh $version
