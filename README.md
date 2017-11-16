##Compile Hadoop in Docker container

####Download docker image

```
sudo docker pull kiwenlau/compile-hadoop
```

or you can build kiwenlau/comile-hadoop image by your self

```
sudo docker build -t kiwenlau/compile-hadoop .
```

####Download [Hadoop source code](http://archive.apache.org/dist/hadoop/core/)

```
export VERSION=2.8.2
wget http://archive.apache.org/dist/hadoop/core/hadoop-$VERSION/hadoop-$VERSION-src.tar.gz
tar -xzvf hadoop-$VERSION-src.tar.gz
```

####Run Docker container, compile hadoop inside container

```
sudo docker run -v $(pwd)/hadoop-$VERSION-src:/hadoop-$VERSION-src kiwenlau/compile-hadoop /root/compile.sh $VERSION
```

output:

```
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 1:05:17.523s
[INFO] Finished at: Thu Nov 16 09:09:58 UTC 2017
[INFO] Final Memory: 212M/594M
[INFO] ------------------------------------------------------------------------


comile hadoop 2.8.2 success!

```

you can find compiled hadoop file in:

```
hadoop-2.3.0-src/hadoop-dist/target/hadoop-2.3.0.tar.gz
```

change the value of VERSION, you can compile other version of Hadoop

```

