# A2A Theaters
## Getting Started
I am leveraging Docker for the local dev environment to prevent the need of having any dependencies installed on your local machine. So it should be a matter of having the latest version of Docker installed and running `docker-compose up --build` from this directory. Once the containers are up and functional, please move onto the following section regarding database migrations and seeding.

## Database Migrations and Seeding
Firstly, running `docker-compose exec a2a-app php artisan migrate` from this directory will create the necessary database tables. There are also two seeder classes that can be accessed by running `docker-compose exec a2a-app php artisan db:seed` to populate our newly created tables with some test data.

**NOTE:** An API key for [The Movie Database API](https://developer.themoviedb.org/docs/getting-started) will be required to get some initial data via the `MovieSeeder`.

## Primary Task
The primary task was implemented using Laravel's artisan commands. It provides a helpful set of commands to assist with input and output of CLI programs. The following instructions will help you see that command in action for yourself:
1. Run `docker-compose exec a2a-app bash` to allow you to take control of a bash session within the container.
2. Running `php artisan app:get-highest-selling-theater-by-date` will prompt you to specify a date in which the program will find which movie theater generated the most sales for that day.

## Other Usage
Once the containers are live and the database has been populated, you can head over to `localhost:8000` to access the Laravel app. The underlying MySQL database is also accessable via local port `8001` using the SQL client of your choice.