# A2A Interview Task

## Getting Started
See `A2A Interview Task.pdf` for task specifics. The suggested order would be to start by visiting the PHP solution first, as it will setup a local dev environment using Docker that will have the containerized MySQL DB that is pivotal to both the PHP and Go solutions.

## Schema Explanation

### Theaters and Movies
The first tables are `theaters` and `movies` as those a required for the primary task. They have a few supplemental columns to describe different attributes.

Columns like `country`, `genre`, `language`, and `rating` in the `movies` table can be standardized into their own tables. But I felt like that was a bit overkill for this task.

### Theater-Movies
The first important table is the `theater_movies` join table to describe the many-to-many relationship between the `theaters` and `movies` tables. After all, it is not likely that all movies will be shown at all theaters, so a many-to-many relationship makes sense here.

I also added a primary key to this table as well to address the attribution of sales, I will go into more detail in the section below.

### Theater-Movie-Transactions
I was wondering how I was going to keep track of sales. Since not all movies are shown at all theaters, some theaters may have more movies and therefore possibly more sales. Or perhaps a theater is in a more populated area and that may have some benefit for sales.

Regardless of the scenario, linking `theater_movies` to sales was more reasonable approach for my schema. This table will establish a zero-to-many relationship where each `theater_movie` entry can have zero to many sales.

In hind sight, it probably is not necessary to have a `total` column since we can compute that in real-time (if needed). This design also leaves room for expansion, since we have a transaction, we can also link any number of tickets to this transaction in the future. This is useful for gaining insights such as age demographics for certain titles, maybe even at the theater level.

## Database Dump
Please see the `dump-a2a_theaters-202411251654.sql` file for the entire dump of the database.

## Supplemental Task (WIP)
My plan is to extend my PHP solution with a Vue.js front-end with a couple of CRUD endpoints to help users better visualize the transactions.