#!/bin/bash

# compile hadoop 2.8.2 by default
version=${1:-2.8.2}

cd /hadoop-$version-src

echo -e "\n\ncomile hadoop $version..."
mvn package -Pdist,native -DskipTests -Dtar

if [[ $? -eq 0 ]]; then
	echo -e "\n\ncomile hadoop $version success!\n\n"
	#mv ./hadoop-dist/target/hadoop-$version.tar.gz /binary
else
        echo -e "\n\ncomile hadoop $version fail!\n\n"
fi


