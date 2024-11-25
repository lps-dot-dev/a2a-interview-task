# A2A Theaters [GO]

## Requirements
1. **Go 1.22:** Having Go on your local machine is practically a requirement when developing, so I skipped setting up a Docker environment in this case.
2. **Docker Desktop/Engine:** I am also making an assumption that the PHP solution has already been setup and the MySQL container is setup and seeded with test data as this program will utilize that container's exposed `8001` port.

## Usage
First, make sure to install any missing dependencies with `go mod download && go mod verify`. You can choose to build the application but for this example we can just run the application using the following command:
```
go run main.go theaters most-sales-by-day "Y-m-d"
```