var mysql = require('mysql');

var conn =mysql.createConnection({ //  mysql.createPool({ // 
      host: "localhost",
      user: "root",
      password: "admin",
      database: "selenous"
    }
);


exports.findAll = function(req, res) {
    var query = "select * from a_user";
    conn.query(query, function(error, result) {
        if(error) {
            console.dir(error);
        } else {
            res.jsonp(result);
        } 
    }); 
};


exports.findById = function(req, res) {
    var id = parseInt(req.params.id);

    var query = "select * from a_user where user_id = " + id;
    conn.query(query, function(error, result) {
        if(error) {
            console.dir(error);
        } else {
          res.jsonp(result);
        }
    });
};


exports.destroy = function(req, res) {
    // return res.send('Error 404: No quote found');

    var id = parseInt(req.params.id);

    var query = "delete from a_user where user_id = " + id;
    conn.query(query, function(error, result) {
        if(error) {
            console.dir(error);
        } else {
          res.jsonp(result);
        }
    });
};


exports.add = function(req, res) {

    var id = parseInt(req.params.id);

    console.dir(  req.body );

    conn.query('insert into a_user set ?', req.body, function(error, result){
        if(error) {
            console.dir(error);
        } else {
          res.jsonp(result);
        }

        console.log('Last insert ID:', result.insertId);
    });
};

 


exports.update = function(req, res) {
    // connection.query('UPDATE user SET ? WHERE ?', [{ Name: name }, { UserId: userId }])

    var id = parseInt(req.params.id);

    console.dir(  req.body );

    
    var userId = {user_id: id};

    // connection.query('UPDATE contacts SET Name = ?,Mobile=? WHERE yourCondition = ?', [post.name,post.mobile,condition], function(err, result) {}) 

/*
    conn.query('UPDATE mettwoch SET ? WHERE ?', 
        [{ mettmeister: mettmeister }, { mettwoch_id: mettwochId }], function(err) { console.log(err); if (!err) { res.status(201); } else { res.status(500); } });
*/


    conn.query('update a_user set ? where ?', [req.body, userId], function(error, result){
        if(error) {
            console.log("Enormous Error fu");
            console.dir(error);
        } else {
          res.jsonp(result);
        }
    });
 
};













    /*
    db.collection('employees', function(err, collection) {
        collection.findOne({'id': id}, function(err, item) {
            console.log(item);
            res.jsonp(item);
        });
    }); */ 




/*
var MongoClient = require('mongodb').MongoClient,
    Server = require('mongodb').Server,
    db;

var mongoClient = new MongoClient(new Server('localhost', 27017));
mongoClient.open(function(err, mongoClient) {

   
    db = mongoClient.db("employeedb09");
    db.collection('employees', {strict:true}, function(err, collection) {
        if (err) {
            console.log("The 'employees' collection doesn't exist. Creating it with sample data...");
            populateDB();
        }
    }); 
});
*/
 

 /*
exports.findByManager = function(req, res) {
    
    debugger;
    var id = parseInt(req.params.id);
    console.log('findByManager: ' + id);
  
    db.collection('employees', function(err, collection) {
        collection.find({'managerId': id}).toArray(function(err, items) {
            console.log(items);
            res.jsonp(items);
        });
    }); /*


};
/*


/*

curl quiet-waters-1228.herokuapp.com/hello
curl -i quiet-waters-1228.herokuapp.com/hello
curl -L quiet-waters-1228.herokuapp.com/redirectme

*/




/*
    conn.query(queryString, function(error, result) {
    if(error) {
        console.dir(error);

        debugger;
        // throw error;

    } else {
        debugger;
        res.jsonp(result);


        console.log("No Problem Problem");
    }

});
*/

/*
curl -X POST quiet-waters-1228.herokuapp.com/echo

curl -X POST "quiet-waters-1228.herokuapp.com/echo?fname=Mark&lname=Bates"

curl -X POST -d "fname=Mark&lname=Bates" quiet-waters-1228.herokuapp.com/echo

curl -X POST -d "fname=Mark&lname=Bates" quiet-waters-1228.herokuapp.com/echo
curl -X POST -d @form_data.json quiet-waters-1228.herokuapp.com/echo
curl -X POST -d @form_data.json quiet-waters-1228.herokuapp.com/echo \
  -H "Accept: application/json"
{
   "body" : {
      "site" : "http://www.markbates.com",
      "twitter" : "http://twitter.com/markbates",
      "lname" : "Bates",
      "fname" : "Mark"
   },
   "url" : "http://quiet-waters-1228.herokuapp.com/echo",
   "method" : "POST"
}

curl -i -u "user1:password1" quiet-waters-1228.herokuapp.com/whoami


curl -H "Content-Type: application/json" -X POST -d '{"username":"xyz","password":"xyz"}' http://localhost:3000/api/login
*/


 
/*

var employee = { name: 'Winnie', location: 'Australia' };
con.query('INSERT INTO employees SET ?', employee, function(err,res){
  if(err) throw err;

  console.log('Last insert ID:', res.insertId);
});



  //  conn.query(queryString, function(error, result) {

    var post  = {firstname: 'Jon', middlename: 'Ryan', lastname: 'Toews' };
    var query = conn.query('INSERT INTO posts SET ?', post, function(err, result) {
  // Neat!
    });



    if(error) {
        console.dir(error);

        debugger;
        // throw error;

    } else {
        debugger;
        res.jsonp(result);


        console.log("No Problem Problem");
    }
*/



    /*
    var db = req.db;
    var collection = db.get('userlist');
    collection.insert(req.body, function(err, result){
        res.send(
            (err === null) ? { msg: '' } : { msg: err }
        );
    });
    */

 

// /deleteuser/:id

/*
exports.remove = function(req, res) {
    debugger;

    var id = parseInt(req.params.id);

    var queryString = "delete from a_user where user_id = ?";

 
con.query(
  'DELETE FROM employees WHERE id = ?',
  [5],
  function (err, result) {
    if (err) throw err;

    console.log('Deleted ' + result.affectedRows + ' rows');
  }
);
*/

    /*
    var db = req.db;


    var collection = db.get('userlist');


    var userToDelete = req.params.id;
    */

    /*
    collection.remove({ '_id' : userToDelete }, function(err) {
        res.send((err === null) ? { msg: '' } : { msg:'error: ' + err });
    });
*/
 
/* 
curl -X PUT quiet-waters-1228.herokuapp.com/echo
*/


// exports.update = function(req, res) {

   


/*
    var db = req.db;
    var collection = db.get('userlist');
    var userToDelete = req.params.id;
    collection.remove({ '_id' : userToDelete }, function(err) {
        res.send((err === null) ? { msg: '' } : { msg:'error: ' + err });
    });


    con.query(
  'UPDATE employees SET location = ? Where ID = ?',
  ["South Africa", 5],
  function (err, result) {
    if (err) throw err;

    console.log('Changed ' + result.changedRows + ' rows');
  }
);

*/




// };

/*


app.put('/api/products/:id', function (req, res){
  return ProductModel.findById(req.params.id, function (err, product) {
    product.title = req.body.title;
    product.description = req.body.description;
    product.style = req.body.style;
    return product.save(function (err) {
      if (!err) {
        console.log("updated");
      } else {
        console.log(err);
      }
      return res.send(product);
    });
  });
});



*/



/*
router.delete('/deleteuser/:id', function(req, res) {
    var db = req.db;
    var collection = db.get('userlist');
    var userToDelete = req.params.id;
    collection.remove({ '_id' : userToDelete }, function(err) {
        res.send((err === null) ? { msg: '' } : { msg:'error: ' + err });
    });
});


app.delete('/api/products/:id', function (req, res){
  return ProductModel.findById(req.params.id, function (err, product) {
    return product.remove(function (err) {
      if (!err) {
        console.log("removed");
        return res.send('');
      } else {
        console.log(err);
      }
    });
  });
});



 
.post('/adduser', function(req, res) {
    var db = req.db;
    var collection = db.get('userlist');
    collection.insert(req.body, function(err, result){
        res.send(
            (err === null) ? { msg: '' } : { msg: err }
        );
    });
});
 
    db.collection('employees', function(err, collection) {
        if (name) {
            collection.find({"fullName": new RegExp(name, "i")}).toArray(function(err, items) {
                res.jsonp(items);
            });
        } else {
            collection.find().toArray(function(err, items) {
                res.jsonp(items);
            });
        }
    });*/
 


