# User management

## Pre-requists

- [install docker-compose ](https://docs.docker.com/compose/install/)

## install

You need first to load the content of the frontend and backend (sub)modules.

```
git submodule init
```

### To run tests

Setup databases for tests

```
./scripts/setup.sh
```

## Build

You need then to build the images to be run, this is a one time job unless you change the dockerfile of the modules

```
docker-compose build
```

You will need to build the server side

```
cd backend
npm run build
```

## Play

- UI --> http://localhost:3000
- Metrics --> http://localhost:6000
