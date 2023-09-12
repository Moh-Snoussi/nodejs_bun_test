const mysql = require('mysql2');

const db = mysql.createConnection({
    host: 'localhost',
    user: 'admin',
    password: 'admin',
    database: 'qa_polls'
});

db.connect((err) => {
    if (err) {
      console.error('Error connecting to MySQL:', err);
      return;
    }
    console.log('Connected to MySQL database');
  });


  const sql = 'SELECT * FROM polls_question';
  db.getQuestions = async () => await db.promise().query(sql);

module.exports = db;
