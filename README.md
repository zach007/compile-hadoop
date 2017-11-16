## 使用docker编译hadoop镜像

####直接使用：下载docker镜像


```
sudo docker pull kiwenlau/compile-hadoop
```

####自定义使用：

```
git clone git@github.com:zach007/compile-hadoop.git
cd compile-hadoop
sudo docker build -t zach007/compile-hadoop .
```
######备注：如需要自己定义jdk版本或者hadoop版本，可以修改dockerfile或者关联的compile.sh


####下载hadoop源码 [Hadoop source code](http://archive.apache.org/dist/hadoop/core/)

```
export VERSION=2.8.2
wget http://archive.apache.org/dist/hadoop/core/hadoop-$VERSION/hadoop-$VERSION-src.tar.gz
tar -xzvf hadoop-$VERSION-src.tar.gz
```

####运行docker容器，并且在里面编译hadoop

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

编译后的hadoop文件路径
```
/hadoop-2.8.2-src/hadoop-dist/target/hadoop-2.8.2.tar.gz
```

其他编译后的版本hadoop，参见release页面

运行：参照 https://github.com/zach007/hadoop-cluster-docker
