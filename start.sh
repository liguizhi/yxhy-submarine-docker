# bash
# 启动java后台服务
cd /data/submarine-095 && gradle build
cd build/libs && java -jar CECD-0.0.1-SNAPSHOT.jar &
# 启动submarine用户前台 端口:6001
cd /data/submarine-095-fe && npm run serve &
# 启动submarine运营后台 端口:6002
cd /data/submarine-095-admin-fe && npm run serve &
# 启动redis服务
redis-server &
