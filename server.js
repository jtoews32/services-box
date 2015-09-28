var express = require('express'),
    users = require('./routes/user'),
    bodyParser = require('body-parser');
 
var server = express();

server.use(bodyParser.json());


// GET 

// curl http://localhost:3000/users
server.get('/users', users.findAll);

// curl http://localhost:3000/users/1
server.get('/users/:id', users.findById);


// DELETE

// curl -X "DELETE" http://localhost:3000/users/37
server.delete('/users/:id', users.destroy );

// TODO ADD FILTER


// POST

// curl -H "Content-Type: application/json" -X "POST" -d '{"lastname":"shields","firstname":"will"}' http://localhost:3000/users  
server.post('/users', users.add);


// PUT

// curl -H "Content-Type: application/json" -X "PUT" -d '{"lastname":"sshields","firstname":"wwill"}' http://localhost:3000/users/36
server.put('/users/:id', users.update );




server.listen(3000);
console.log('Listening on port 3000...');