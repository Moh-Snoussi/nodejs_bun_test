const db = require('./db'); // Import the MySQL connection
const ejs = require('ejs');

const server = Bun.serve({
    port: 3000,
    async fetch(_) {
        try {
            const [questions] = await db.getQuestions();

            const template = await Bun.file('views/questions.ejs').text();
            const renderedHTML = ejs.render(template, { questions: questions, app_name: 'Node application' });

            return new Response(renderedHTML, {
                status: 200,
                headers: {
                    'Content-Type': 'text/html',
                }
            });
        } catch (err) {
            console.error(err);
            return new Response('Internal server error', {
                status: 500,
            });
        }
    }
});


console.log(`Listening on localhost:${server.port}`);

