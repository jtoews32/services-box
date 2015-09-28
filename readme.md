## Node.js + MySQL + Rest ##

## Setting Up ##

npm install

node server.js


## Starting Services-Box ##

DEBUG=services-box npm start


## Testing ##

GET 

curl http://localhost:3000/users
curl http://localhost:3000/users/1


DELETE

curl -X "DELETE" http://localhost:3000/users/37


TODO ADD FILTER


POST

curl -H "Content-Type: application/json" -X "POST" -d '{"lastname":"shields","firstname":"will"}' http://localhost:3000/users  


PUT

curl -H "Content-Type: application/json" -X "PUT" -d '{"lastname":"sshields","firstname":"wwill"}' http://localhost:3000/users/36
