/**
 *  Database connection
 * 
 */
const mysql = require('mysql');
const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: "oopdatabase"
});


connection.connect(err => {
    if (!err) {
        console.log("connected to database");
    } else {
        console.log("not connected to database");
    }
});

module.exports = connection;