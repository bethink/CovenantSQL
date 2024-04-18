### This node deployed as Custom Miner

```
<!-- Config path -->

docker pull covenantsql/covenantsql:latest

mkdir -p /home/ubuntu/Apps/OpenDB_Miner/testnet/miner_config

cd /home/ubuntu/Apps/OpenDB_Miner/testnet/

<!-- Create Container -->
docker create --name "miner_03" \  
--restart always   -v $(pwd)/miner_config/:/app/config/   \
-v "./miner_config/data:/app/config/data/"   \
-e COVENANT_ROLE=miner   \
-e COVENANT_CONF=/app/config/config.yaml  \ 
--log-driver "json-file"   \
--log-opt "max-size=1g"   \
--log-opt "max-file=3"   \
-p "11100:11100"   \
covenantsql/covenantsql:latest


<!-- Start miner -->
docker start miner_03

docker ps -a -f "name = miner_03"

docker logs --tail=10 -f "miner_03"

```



