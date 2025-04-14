#!/bin/bash



# 软件包
# python3
# golangopenBLAS
# mysql
# C++
# protobuf
# memcached
# iava
# hadoop

# 检查版本和安装是否成功
# mysql --version
# systemctl start mysqld
# systemctl enable mysqld
# systemctl status mysqld

# 切换到mugen目录下
# bash dep_install.sh

# bash mugen.sh -c --ip 10.0.2.15 --password 'openEuler12#$' --user root --port 22

# export OET_PATH=$(pwd)

# 解决错误
# mugen.sh: line 114: export: `/sys/class/net//address:': not a valid identifier
# 之前的ipv4输入错误导致上述问题，改了之后已解决

# systemctl status mysqld.service
/sys/kernel/debug/tracing

# 测试命令
bash mugen.sh -f python3 -x
bash mugen.sh -f smoke -r oe_test_golang -x
bash mugen.sh -f openblas -x
# bash mugen.sh -f mysql -x
bash mugen.sh -f smoke-basic-os -r oe_test_g++ -x
bash mugen.sh -f os-basic -r oe_test_c++ -x
bash mugen.sh -f os-basic -r oe_test_c++_stl -x
bash mugen.sh -f protobuf -x
bash mugen.sh -f memcached -x
# bash mugen.sh -f java-1.8.0-openjdk -x
# bash mugen.sh -f java-11-openjdk -x
# bash mugen.sh -f java-17-openjdk -x
# bash mugen.sh -f hadoop -x
# bash mugen.sh -f hadoop-3.1 -x



