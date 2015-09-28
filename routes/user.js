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
        // conn.release(); try if pooled
        if(error) {
            console.dir(error);
        } else {
            res.jsonp(result);
        } 
    }); 
};

exports.findById = function(req, res) {
    var id = parseInt(req.params.id);
    var query = "select * from a_user where user_id = ?";

    conn.query(query, [id], function(error, result) {
        // conn.release(); try if pooled
        if(error) {
            console.dir(error);
        } else {
          res.jsonp(result);
        }
    });
};

exports.destroy = function(req, res) {
    var id = parseInt(req.params.id);
    var query = "delete from a_user where user_id = ?";

    conn.query(query, [id], function(error, result) {
        // conn.release(); try if pooled
        if(error) {
            console.dir(error);
        } else {
          res.jsonp(result);
        }
    });
};

exports.add = function(req, res) {
    var id = parseInt(req.params.id);

    conn.query('insert into a_user set ?', req.body, function(error, result){
        // conn.release(); try if pooled
        if(error) {
            console.dir(error);
        } else {
          res.jsonp(result);
        }
        // console.log('Last insert ID:', result.insertId); to get last insert id
    });
};

exports.update = function(req, res) {
    var id = parseInt(req.params.id);
    var userId = {user_id: id};

    conn.query('update a_user set ? where ?', [req.body, userId], function(error, result){
        // conn.release(); try if pooled
        if(error) {
            console.log("Enormous Error fu");
            console.dir(error);
        } else {
          res.jsonp(result);
        }
    });
};


