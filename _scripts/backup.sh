echo "[*] Executing backup..."
docker-compose run backup consul-backup -i consul:8500 -t $(grep 'backup_token:' ./_data/keys.txt | awk -v RS='\r\n' '{printf $2}')  backup_$(date +%Y-%m-%d)
