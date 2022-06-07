# Codding Nomads Mentor Dashboard

This repository is a quick docker-based way to run the dashboard application 
locally. 

### Source code 

You can find the source code the Frontend and Backend components in separate 
repositories:
- Frontend: [cn-mentor-fe](https://github.com/NikitaBaranov/cn-mentor-fe)
- Backend: [cn-mentor-be](https://github.com/NikitaBaranov/cn-mentor-be) 


##  Setup [Codding Nomads](https://platform.codingnomads.co) access
The application will use credentials for login to the portal and extract 
information to present in the dashboard.

Use [.env-template](./.env-template) to create [.env](./.env) and fill in the
credentials. 

 ```shell
 cp .env-template .env
 ```

 For example:
 ```dotenv
 CN_MOODLE_USERNAME:codding-nomads-user@gmail.com
 CN_MOODLE_PASSWORD:C0mpl!catedP@ssw0rd
 ```

## Project commands
The repository has a `Makefile` with a collection of convenience commands, so 
you can ether use `make ...` command or the corresponding docker commands.

### Start
Start all services in containers required for the Dashboard
```shell
make start
```

### Stop
Stop and destroy all containers (Data will be preserved within Docker volume)
```shell
make stop
```

### Tools
Start Mongo-Express a web UI for Mongo DB
```shell
make tools
```

### Clean
Destroy all containers and clean up data volume

**_NOTE:_ You will lose all data entered to the system!**
```shell
make clean
```


