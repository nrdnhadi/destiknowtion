import mysql from 'mysql2';

const connection = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'node_auth_api'
});

// Verify that the database is connected successfully
connection.connect((error) => {
    if(error){
        console.error(error);
        return;
    }
    console.log('The database is successfully connected.');
})