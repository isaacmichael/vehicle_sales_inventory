# README

# HOW TO USE THIS RUBY ON RAILS API

* This API uses Ruby V3.0.0 & MySql V8.0

# RUNNING LOCALLY (requires linux)
## I use an Ubuntu terminal in either WSL2 (windows 10) or WSLg (windows11) to run this locally.
* clone the src code
* install mysql 
* cd into the vehicle_sales_inventory directory
* make sure mySQL is running with "sudo service mysql start"
* in terminal run 'bundle install' then 'rails db:drop db:create db:migrate db:seed'
* To test, run "rails test" or to start the server, run "rails server"
* a webpage should appear saying "RAILS"
* from there you can use the webpage or postman to create requests e.g (http:localhost:3000/vehicle_sales) to get the first 20 results 
# TESTING IN LOCAL
* There are a few tests, assuming the you have ther server stopped, you can run these with "rails test"



# RUNNING WITH DOCKER

##cd to make the current directory "vehicle_sales_inventory"
* run "docker-compose build" and "docker-compose up"
* Docker should generate two containers, "MySql" and "Ruby_On_Rails"
* Unfortunately, The database will need to be initialized manually. Go into the ruby on rails container's CLI and run "rails db:drop db:create db:migrate db:seed". After that, it should be ready to serve data.
* Now that the databse is loaded in with preset seeds. Try out a request in the browser or postman, e.g (http:localhost:3000/vehicle_sales)
* This should return the list paginated to 20 results. Pages can be switched by using "?page={number}" after the orginal URL.

# TESTING IN DOCKER
* There are a few tests, you can run these by using the ruby_on_rails container's CLI and running "rails test".


# EXAMPLE COMMANDS THAT CAN BE USED. (In case the openapi.yaml is not clear (it my first time making one))


# everything is automatically paginated to 20 results per page

### http://localhost:3001/vehicle_sales - GETS EVERYTHING
### http://localhost:3001/vehicle_sales/{id} - GETS OBJECT BY ID
### http://localhost:3001/searchMake?make={make} - GETS OBJECTS WHERE THE SPECIFIED MAKE OF CAR IS FOUND
### http://localhost:3001/searchModel?model={model} - GETS OBJECTS WHERE THE SPECIFIED MODEL OF CAR IS FOUND
### http://localhost:3001/searchYear?year={year} - GETS OBJECTS WHERE THE SPECIFIED YEAR OF CAR IS FOUND
### http://localhost:3001/searchColor?color={color} - GETS OBJECTS WHERE THE SPECIFIED COLOR OF CAR IS FOUND


# TO ACCESS OTHER PAGES THROUGH PAGINATION DO THIS

### http://localhost:3001/vehicle_sales&page={page} - GETS EVERYTHING FROM SELECTED PAGE
### http://localhost:3001/searchMake?make={make}&page={page}
### http://localhost:3001/searchModel?model={model}&page={page} 
### http://localhost:3001/searchYear?year={year}&page={page} 
### http://localhost:3001/searchColor?color={color}&page={page} 
