sqoop image
====

### 安装的程序
sqoop.1.4.7.bin_hadoop-2.6.0.tar.gz (带hadoop-2.6.0) 这个版本多sqoop-eval 等工具；
选择sqoop1.4.7是因为支持直接导入为hive表；


### sqoop容器制作
docker run -itd --name sqoop --hostname sqoop ninecrow/centos6-sqoop -d

### sqoop启动
    docker exec -it <container> /bin/bash -l 
&emsp;&emsp; -l 参数进入容器后模拟bash login /etc/profile参数生效；
