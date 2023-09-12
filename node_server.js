const http = require('http');
const db = require('./db'); // Import the MySQL connection
const fs = require('fs');
const ejs = require('ejs');

const server = http.createServer(async (_, res) => {
  try {
    const [questions] = await db.getQuestions();

    const template = fs.readFileSync('views/questions.ejs', 'utf8');
    const renderedHTML = ejs.render(template, {
      questions: questions,
      app_name: 'Node application'
    });

    res.writeHead(200, {
      'Content-Type': 'text/html',
    });
    res.end(renderedHTML);
  } catch (err) {
    console.error(err);
    res.writeHead(500);
    res.end('Internal server error');
  }

});

const port = 3000;
server.listen(port, () => {
  console.log(`Nodejs Listening on localhost: ${port}`);
});
