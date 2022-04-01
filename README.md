# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* This API uses Ruby V3.0.0

# RUNNING LOCALLY (not very fun)
## I use an Ubuntu terminal in either WSL2 (windows 10) or WSLg (windows11) to run this locally.
* clone the src code
* install mysql 
* cd into the vehicle_sales_inventory directory
* make sure mySQL is running with "sudo service mysql start"
* in terminal run 'bundle install' then 'rails db:drop db:create db:migrate db:seed'
* To test, run "rails test" or to start the server, run "rails server"
* a webpage should appear saying "RAILS"
* from there you can use the webpage or postman to create requests e.g (http:localhost:3000/vehicle_sales) to get the first 20 results 

# RUNNING WITH DOCKER

##cd to make the current directory "vehicle_sales_inventory"
* run "docker-compose build" and "docker-compose up"
* Docker should generate two containers, "MySql" and "Ruby_On_Rails"
* The database should be created with a script file, but in case it isnt you can go to the "Ruby_On_Rails" container's CLI and run 'rails db:drop db:create db:migrate db:seed'
* from there the databse should be loaded in with preset values. Try out a request in the browser or postman, e.g (http:localhost:3000/vehicle_sales)
* This should return the list paginated to 20 results.

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
