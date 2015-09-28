var express = require('express'),
    users = require('./routes/user'),
    bodyParser = require('body-parser');
 
var app = express();

app.use(bodyParser.json());


// GET 

// curl http://localhost:3000/users
app.get('/users', users.findAll);

// curl http://localhost:3000/users/1
app.get('/users/:id', users.findById);


// DELETE

// curl -X "DELETE" http://localhost:3000/users/37
app.delete('/users/:id', users.destroy );

// TODO ADD FILTER


// POST

// curl -H "Content-Type: application/json" -X "POST" -d '{"lastname":"shields","firstname":"will"}' http://localhost:3000/users  
app.post('/users', users.add);


// PUT

// curl -H "Content-Type: application/json" -X "PUT" -d '{"lastname":"sshields","firstname":"wwill"}' http://localhost:3000/users/36
app.put('/users/:id', users.update );




app.listen(3000);
console.log('Listening on port 3000...');