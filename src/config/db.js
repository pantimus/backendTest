const mysql = require("mysql2");
const config = require('./config');


const connection = mysql.createConnection({
  host: config.server,
  user: config.user,
  database: config.database,
  password: config.pass
}).promise();

connection.connect(function(err){
    if (err) {
      return console.error("Ошибка: " + err.message);
    }
    else{
      console.log("Подключение к серверу MySQL успешно установлено");
    }
 });

module.exports = connection;