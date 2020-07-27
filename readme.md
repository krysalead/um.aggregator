# User management

## Pre-requists

- Java 1.8.0
- Docker
- [install docker-compose ](https://docs.docker.com/compose/install/)

## Presentation

### Subject

This project aims at manage user defined by their names and emails. It allows only people from France to add users, no other restriction. Metrics are pushed to a database for each event happening on the application

### Global overview of the architecture

![architecture](architecture.png)

## install

You need first to load the content of the frontend, backend and metrics (sub)modules.

```
git submodule init
```

Setup for the front and back (database, swagger code generation)

```
./scripts/setup.sh
```

## Build

You need then to build the images to be run, this is a one time job unless you change the dockerfile of the modules

```
docker-compose build
```

Running the entire application

```
docker-compose up
```

## Play

- UI --> http://localhost:3000
- Metrics --> http://localhost:6000
