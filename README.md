# Docker + Consul + Vault

Full description can be found online: https://www.marcolancini.it/2017/blog-vault/


## Usage

#### First Run

1. Start services: `docker-compose up`
2. Init vault:     `./_scripts/setup.sh`
3. When done:      `docker-compose down`

Data will be persisted in the `_data` folder.


#### Subsequent Runs

1. Start services: `docker-compose up`
2. Unseal vault:   `_scripts/unseal.sh`


#### Backup

1. Start services: `docker-compose up`
2. Run backup:     `_scripts/backup.sh`


#### Remove all data

1. Stop services: `docker-compose down --volumes`
2. Clear persisted data: `_scripts/clean.sh`
