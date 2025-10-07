# Tree

- [nginx](nginx)
- [api](api)
- [admin](admin) (nuxt3)
- [site](site2) (nuxt3)
- [mysql](mysql) (mariadb)

## Install

```shell
git clone git@github.com:family-tree-diplom/docker.git .
git submodule update --init --recursive

cp .env.example .env
cp mysql/.env.example mysql/.env
cp redis/.env.example redis/.env
cp admin/.env.example admin/.env
cp site/.env.example site/.env
cp api/.env.example api/.env

# configure api/.env

docker-compose build
docker-compose up -d
```

## Dev

```shell
docker-compose -f docker-compose.dev.yml build
docker-compose -f docker-compose.dev.yml up -d mysql redis
```

### dev api
```shell
cd api/
composer install
php index.php
```
### dev admin
```shell
cd admin
npm install
npm run dev
```
### dev site
```shell
cd site
npm install
npm run dev
```
### end
```shell
docker-compose -f docker-compose.dev.yml down
```

## Production
```shell
docker-compose build
docker-compose up -d
```

