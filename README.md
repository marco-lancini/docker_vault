# Docker + Consul + Vault

How to use docker-compose to spin up a Vault instance backed by Consul.

A full description can be found on my website: https://www.marcolancini.it/2017/blog-vault/

![Vault UI](https://www.marcolancini.it/images/posts/blog_vault_2.jpg)


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
