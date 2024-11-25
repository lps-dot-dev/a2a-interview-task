# A2A Theaters
## Getting Started
I am leveraging Docker for the local dev environment to prevent the need of having any dependencies installed on your local machine. So it should be a matter of having the latest version of Docker installed and running `docker-compose up --build` from this directory. Once the containers are up and functional, please move onto the following section regarding database migrations and seeding.

## Database Migrations and Seeding
Firstly, running `docker-compose exec a2a-app php artisan migrate` from this directory will create the necessary database tables. There are also two seeder classes that can be accessed by running `docker-compose exec a2a-app php artisan db:seed` to populate our newly created tables with some test data.

**NOTE:** An API key for [The Movie Database API](https://developer.themoviedb.org/docs/getting-started) will be required to get some initial data via the `MovieSeeder`.

## Usage
Once the containers are live and the database has been populated, you can head over to `localhost:8000` to access the Laravel app. The underlying MySQL database is also accessable via local port `8001` using the SQL client of your choice.