# Node.js + MySQL + Rest #

Summary: A simple service with no security Middleware added.


# Setting Up and Starting Services-Box #

npm install

node server.js

or

DEBUG=services-box npm start


# API #

## Fetch (GET) ## 

curl http://localhost:3000/users
curl http://localhost:3000/users/1

## Insert (POST) ##

curl -H "Content-Type: application/json" -X "POST" -d '{"lastname":"shields","firstname":"will"}' http://localhost:3000/users  

## Update (PUT) ##

curl -H "Content-Type: application/json" -X "PUT" -d '{"lastname":"sshields","firstname":"wwill"}' http://localhost:3000/users/36

## Remove (DELETE) ##

curl -X "DELETE" http://localhost:3000/users/37