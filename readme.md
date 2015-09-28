# Node.js + MySQL + REST #

A simple service with no security middleware added.


# Setting up and running services-box #

npm install

node server.js

or

DEBUG=services-box npm start


# API #

Fetch (GET)

```bash

curl http://localhost:3000/users

curl http://localhost:3000/users/1

```

Insert (POST)

```bash

curl -H "Content-Type: application/json" -X "POST" -d '{"lastname":"shields","firstname":"will"}' http://localhost:3000/users  

```

Update (PUT)

```bash

curl -H "Content-Type: application/json" -X "PUT" -d '{"lastname":"sshields","firstname":"wwill"}' http://localhost:3000/users/36

```

Remove (DELETE)

```bash

curl -X "DELETE" http://localhost:3000/users/37

```