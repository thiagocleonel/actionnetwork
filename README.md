# ActionNetwork Test

This repo keeps the solution asked as test for the ActionNetwork company.

This app is also available at Heroku: https://actionnetworktest.herokuapp.com/

## Gems
The following gems, between others, are used in this project:
- Rails 5.2.1
- Sidekiq
- Will Paginate
- rails-rspec
- bootstrap

The application consists in a simple post scheduler, where the use of Sidekiq, workers and Redis are basic requirements.

## How can I run it locally?
1. Clone this project
2. Edit the `config/database.yml` to setup the connection with your local database
3. Install `redis-server`and execute it
4. Run `bundle install`
5. Run `rake db:create db:migrate db:seed` to initialize and build the database
6. Run `bundle exec sidekiq`
7. In another shell tab or window, run `rails s` to test the application on `localhost:3000`

## Tests
There's one Rspec's test that can be runned through `bundle exec rspec` from the root of the application; it will check if the posts are being created with status 'published' by default.


