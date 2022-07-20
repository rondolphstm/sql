// import mysql2 library
const mysql = require('mysql2');

// connect to our database
const db = mysql.createConnection({
    host: '34.170.135.140',
    user: 'root',
    password: 'BuildingSoFLo',
    database: 'swecc-summer-2022',
})

// run a simple query
db.query('select * from books_rstm', (err, results) => {
    if(err){
        console.log(err);
    }
     // output the result
    console.log(results);
    db.end
});
