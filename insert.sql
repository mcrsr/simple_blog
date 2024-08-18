INSERT INTO posts (title, content, tags, category, created_date, updated_date) VALUES
-- Post 1
('Understanding JavaScript Closures',
'<p>Closures are an important concept in JavaScript, often used in functional programming. They allow functions to access variables from an enclosing scope or environment even after the function is executed.</p>
<h3>Example Code:</h3>
<pre><code class=\"language-javascript\">
function makeCounter() {
    let count = 0;
    return function() {
        return count++;
    };
}
const counter = makeCounter();
console.log(counter()); // 0
console.log(counter()); // 1
</code></pre>
<p>This example shows how closures can be used to create private variables.</p>
<img src=\"https://example.com/images/js-closure.png\" alt=\"JavaScript Closures\">
<p>Read more about closures <a href=\"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures\">here</a>.</p>',
'JavaScript,Programming', 'JavaScript', NOW(), NOW()),

-- Post 2
('A Guide to CSS Grid',
'<p>CSS Grid is a powerful tool for creating complex web layouts with ease. It provides a two-dimensional grid-based layout system, which allows you to create grid structures that can be easily manipulated.</p>
<h3>Example Code:</h3>
<pre><code class=\"language-css\">
.container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-gap: 10px;
}
.item {
    background-color: #ccc;
    padding: 20px;
    text-align: center;
}
</code></pre>
<p>CSS Grid simplifies the process of building layouts, as shown in the example above.</p>
<img src=\"https://example.com/images/css-grid.png\" alt=\"CSS Grid Layout\">
<p>Learn more about CSS Grid <a href=\"https://css-tricks.com/snippets/css/complete-guide-grid/\">here</a>.</p>',
'CSS,Web Design', 'CSS', NOW(), NOW()),

-- Post 3
('Getting Started with React',
'<p>React is a popular JavaScript library for building user interfaces. It allows you to build encapsulated components that manage their own state, then compose them to make complex UIs.</p>
<h3>Example Code:</h3>
<pre><code class=\"language-javascript\">
class HelloMessage extends React.Component {
    render() {
        return <h1>Hello, {this.props.name}!</h1>;
    }
}
ReactDOM.render(
    <HelloMessage name=\"World\" />,
    document.getElementById(\'root\')
);
</code></pre>
<p>React components are the building blocks of any React application.</p>
<img src=\"https://example.com/images/react-logo.png\" alt=\"React Logo\">
<p>Learn more about React <a href=\"https://reactjs.org/docs/getting-started.html\">here</a>.</p>',
'React,JavaScript', 'JavaScript', NOW(), NOW()),

-- Post 4
('Exploring Python Generators',
'<p>Generators are a type of iterable in Python, allowing you to iterate over a sequence of values. They are used to optimize memory usage and improve performance when dealing with large data sets.</p>
<h3>Example Code:</h3>
<pre><code class=\"language-python\">
def count_up_to(max):
    count = 1
    while count <= max:
        yield count
        count += 1

counter = count_up_to(5)
print(next(counter))  # 1
print(next(counter))  # 2
</code></pre>
<p>Generators provide an efficient way to handle sequences of values.</p>
<img src=\"https://example.com/images/python-generator.png\" alt=\"Python Generators\">
<p>Read more about generators <a href=\"https://docs.python.org/3/howto/functional.html#generators\">here</a>.</p>',
'Python,Programming', 'Python', NOW(), NOW()),

-- Post 5
('Introduction to REST APIs',
'<p>REST APIs are a common way to interact with web services, using HTTP methods like GET, POST, PUT, DELETE. They allow you to perform CRUD operations over the web.</p>
<h3>Example Code:</h3>
<pre><code class=\"language-javascript\">
fetch(\'https://api.example.com/posts\', {
    method: \'POST\',
    headers: {
        \'Content-Type\': \'application/json\'
    },
    body: JSON.stringify({ title: \'New Post\' })
})
.then(response => response.json())
.then(data => console.log(data));
</code></pre>
<p>REST APIs follow the REST architecture style, which is stateless and resource-based.</p>
<img src=\"https://example.com/images/rest-api.png\" alt=\"REST API\">
<p>Learn more about REST APIs <a href=\"https://restfulapi.net/\">here</a>.</p>',
'APIs,Web Development', 'Web Development', NOW(), NOW()),

-- Post 6
('Building a Simple REST API with Express.js',
'<p>Express.js is a minimal and flexible Node.js web application framework that provides a robust set of features for web and mobile applications. Here is how you can create a simple REST API with Express.js.</p>
<h3>Example Code:</h3>
<pre><code class=\"language-javascript\">
const express = require(\'express\');
const app = express();
app.use(express.json());

app.get(\'/api/posts\', (req, res) => {
    res.json({ message: \'List of posts\' });
});

app.listen(3000, () => console.log(\'Server started on port 3000\'));
</code></pre>
<p>Express.js makes it easy to build robust RESTful APIs.</p>
<img src=\"https://example.com/images/express-logo.png\" alt=\"Express.js Logo\">
<p>Learn more about Express.js <a href=\"https://expressjs.com/\">here</a>.</p>',
'Express.js,Node.js', 'Web Development', NOW(), NOW()),

-- Post 7
('A Beginner’s Guide to Git',
'<p>Git is a version control system that lets you track changes to your files over time. It is widely used in the software industry for managing source code.</p>
<h3>Example Code:</h3>
<pre><code class=\"language-bash\">
git init
git add .
git commit -m \"Initial commit\"
git remote add origin https://github.com/username/repository.git
git push -u origin master
</code></pre>
<p>Git is a powerful tool that helps you collaborate with others and manage your code base effectively.</p>
<img src=\"https://example.com/images/git-logo.png\" alt=\"Git Logo\">
<p>Learn more about Git <a href=\"https://git-scm.com/doc\">here</a>.</p>',
'Git,Version Control', 'Tools', NOW(), NOW()),

-- Post 8
('Mastering Flexbox',
'<p>Flexbox is a CSS layout module that provides an efficient way to align and distribute space among items in a container. It offers great flexibility, even when the size of items is unknown.</p>
<h3>Example Code:</h3>
<pre><code class=\"language-css\">
.container {
    display: flex;
    justify-content: space-between;
}
.item {
    background-color: #f4f4f4;
    padding: 10px;
    margin: 5px;
}
</code></pre>
<p>Flexbox simplifies the process of building complex layouts and aligning items.</p>
<img src=\"https://example.com/images/flexbox-layout.png\" alt=\"Flexbox Layout\">
<p>Learn more about Flexbox <a href=\"https://css-tricks.com/snippets/css/a-guide-to-flexbox/\">here</a>.</p>',
'CSS,Web Design', 'CSS', NOW(), NOW()),

-- Post 9
('Understanding Asynchronous JavaScript',
'<p>Asynchronous JavaScript allows you to perform tasks like data fetching and file reading without blocking the main thread. This is especially useful in web development where you need to keep the user interface responsive.</p>
<h3>Example Code:</h3>
<pre><code class=\"language-javascript\">
async function fetchData() {
    try {
        let response = await fetch(\'https://api.example.com/data\');
        let data = await response.json();
        console.log(data);
    } catch (error) {
        console.error(\'Error fetching data:\', error);
    }
}
fetchData();
</code></pre>
<p>Understanding asynchronous programming is key to writing efficient JavaScript code.</p>
<img src=\"https://example.com/images/async-js.png\" alt=\"Asynchronous JavaScript\">
<p>Learn more about Asynchronous JavaScript <a href=\"https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Asynchronous\">here</a>.</p>',
'JavaScript,Async', 'JavaScript', NOW(), NOW()),

-- Post 10
('Getting Started with Docker',
'<p>Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package up an application with all parts it needs, such as libraries and dependencies, and ship it all out as one package.</p>
<h3>Example Code:</h3>
<pre><code class=\"language-bash\">
docker build -t my-app .
docker run -p 4000:80 my-app
</code></pre>
<p>Docker simplifies the deployment process by encapsulating everything your application needs into a single container.</p>
<img src="https://example.com/images/docker-logo.png" alt="Docker Logo">
<p>Learn more about Docker <a href="https://www.docker.com/resources/what-container">here</a>.</p>',
'Docker,DevOps', 'DevOps', NOW(), NOW()),

-- Post 11
('Introduction to SQL Queries',
'<p>SQL is a powerful language for managing and manipulating relational databases. It allows you to create, read, update, and delete data in a database.</p>
<h3>Example Code:</h3>
<pre><code class="language-sql">
-- Select all records
SELECT * FROM users;

-- Insert a new record
INSERT INTO users (name, email) VALUES (\'John Doe\', \'john.doe@example.com\');

-- Update a record
UPDATE users SET email = \'new.email@example.com\' WHERE name = \'John Doe\';

-- Delete a record
DELETE FROM users WHERE name = \'John Doe\';
</code></pre>
<p>SQL is essential for working with databases, whether for small projects or large-scale applications.</p>
<img src="https://example.com/images/sql-logo.png" alt="SQL Logo">
<p>Learn more about SQL <a href="https://www.w3schools.com/sql/">here</a>.</p>',
'SQL,Database', 'Database', NOW(), NOW()),

-- Post 12
('Exploring Modern JavaScript Features',
'<p>Modern JavaScript offers many new features that improve the development experience. These include arrow functions, template literals, destructuring, and more.</p>
<h3>Example Code:</h3>
<pre><code class="language-javascript">
const add = (a, b) => a + b;
const user = { name: "Alice", age: 25 };
const { name, age } = user;
console.log(`User: ${name}, Age: ${age}`);
</code></pre>
<p>These modern features can help write cleaner and more maintainable code.</p>
<img src="https://example.com/images/js-features.png" alt="Modern JavaScript Features">
<p>Learn more about modern JavaScript <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Introduction">here</a>.</p>',
'JavaScript,ES6', 'JavaScript', NOW(), NOW()),

-- Post 13
('Building Real-Time Applications with WebSockets',
'<p>WebSockets provide a full-duplex communication channel over a single, long-lived connection, allowing for real-time data transfer between the client and server.</p>
<h3>Example Code:</h3>
<pre><code class="language-javascript">
// Server-side code
const WebSocket = require(\'ws\');
const wss = new WebSocket.Server({ port: 8080 });
wss.on(\'connection\', ws => {
    ws.on(\'message\', message => {
        console.log(`Received message => ${message}`);
        ws.send(`Hello, you sent -> ${message}`);
    });
});

// Client-side code
const socket = new WebSocket(\'ws://localhost:8080\');
socket.onmessage = event => {
    console.log(`Message from server: ${event.data}`);
};
socket.send(\'Hello Server!\');
</code></pre>
<p>WebSockets are ideal for applications requiring real-time updates like chat applications or live notifications.</p>
<img src="https://example.com/images/websocket.png" alt="WebSocket">
<p>Learn more about WebSockets <a href="https://developer.mozilla.org/en-US/docs/Web/API/WebSockets_API">here</a>.</p>',
'WebSockets,Real-time', 'Web Development', NOW(), NOW()),

-- Post 14
('Advanced CSS Selectors',
'<p>CSS selectors are powerful tools that allow you to target specific elements on a page. Advanced selectors can help you style elements more precisely.</p>
<h3>Example Code:</h3>
<pre><code class="language-css">
/* Selects all direct children of a container */
.container > * {
    margin: 0;
}

/* Selects elements that have a specific class and are also the first child */
.item.first-child {
    color: red;
}

/* Selects elements based on their state */
button:hover {
    background-color: blue;
}
</code></pre>
<p>Advanced selectors offer more control over your styles and improve the efficiency of your CSS.</p>
<img src="https://example.com/images/css-selectors.png" alt="CSS Selectors">
<p>Learn more about CSS selectors <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Selectors">here</a>.</p>',
'CSS,Selectors', 'CSS', NOW(), NOW()),

-- Post 15
('Introduction to NoSQL Databases',
'<p>NoSQL databases are designed to handle large volumes of unstructured or semi-structured data. They provide flexible schemas and scale horizontally.</p>
<h3>Example Code:</h3>
<pre><code class="language-javascript">
const MongoClient = require(\'mongodb\').MongoClient;
const url = \'mongodb://localhost:27017\';
MongoClient.connect(url, { useNewUrlParser: true, useUnifiedTopology: true }, (err, client) => {
    if (err) throw err;
    const db = client.db(\'mydatabase\');
    db.collection(\'users\').insertOne({ name: \'John Doe\', age: 30 }, (err, res) => {
        if (err) throw err;
        console.log(\'Document inserted\');
        client.close();
    });
});
</code></pre>
<p>NoSQL databases like MongoDB and CouchDB are well-suited for modern web applications.</p>
<img src="https://example.com/images/nosql-database.png" alt="NoSQL Database">
<p>Learn more about NoSQL databases <a href="https://www.mongodb.com/nosql-explained">here</a>.</p>',
'NoSQL,Database', 'Database', NOW(), NOW()),

-- Post 16
('Mastering JavaScript Promises',
'<p>JavaScript Promises are a powerful feature for handling asynchronous operations. They represent a value that may be available now, or in the future, or never.</p>
<h3>Example Code:</h3>
<pre><code class="language-javascript">
const fetchData = () => new Promise((resolve, reject) => {
    setTimeout(() => resolve(\'Data received\'), 1000);
});
fetchData().then(data => {
    console.log(data); // Data received
}).catch(error => {
    console.error(error);
});
</code></pre>
<p>Promises help manage asynchronous operations more effectively and avoid callback hell.</p>
<img src="https://example.com/images/js-promises.png" alt="JavaScript Promises">
<p>Learn more about Promises <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises">here</a>.</p>',
'JavaScript,Promises', 'JavaScript', NOW(), NOW()),

-- Post 17
('A Deep Dive into Node.js Streams',
'<p>Node.js streams are used to handle large amounts of data efficiently. They allow you to process data as it is being read or written, which is useful for performance-intensive applications.</p>
<h3>Example Code:</h3>
<pre><code class="language-javascript">
const fs = require(\'fs\');
const readStream = fs.createReadStream(\'largeFile.txt\');
const writeStream = fs.createWriteStream(\'copyOfLargeFile.txt\');

readStream.pipe(writeStream);
</code></pre>
<p>Streams provide a powerful way to handle data in Node.js applications.</p>
<img src="https://example.com/images/nodejs-streams.png" alt="Node.js Streams">
<p>Learn more about Node.js streams <a href="https://nodejs.org/en/docs/guides/streaming/">here</a>.</p>',
'Node.js,Streams', 'Node.js', NOW(), NOW()),

-- Post 18
('Understanding HTTP/2 Protocol',
'<p>HTTP/2 is a major revision of the HTTP network protocol used by the World Wide Web. It improves performance by allowing multiple requests and responses to be multiplexed over a single connection.</p>
<h3>Example Code:</h3>
<pre><code class="language-http">
GET / HTTP/2
Host: example.com
</code></pre>
<p>HTTP/2 brings significant improvements in speed and efficiency over HTTP/1.1.</p>
<img src="https://example.com/images/http2.png" alt="HTTP/2 Protocol">
<p>Learn more about HTTP/2 <a href="https://http2.github.io/">here</a>.</p>',
'HTTP/2,Web Protocols', 'Web Development', NOW(), NOW()),

-- Post 19
('Exploring the Capabilities of PostgreSQL',
'<p>PostgreSQL is a powerful, open-source object-relational database system known for its advanced features and reliability.</p>
<h3>Example Code:</h3>
<pre><code class="language-sql">
-- Create a table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

-- Insert a record
INSERT INTO users (name, email) VALUES (\'Jane Doe\', \'jane.doe@example.com\');
</code></pre>
<p>PostgreSQL offers robust performance and flexibility for complex queries and large datasets.</p>
<img src="https://example.com/images/postgresql-logo.png" alt="PostgreSQL Logo">
<p>Learn more about PostgreSQL <a href="https://www.postgresql.org/">here</a>.</p>',
'PostgreSQL,Database', 'Database', NOW(), NOW()),

-- Post 20
('Getting Started with TypeScript',
'<p>TypeScript is a strongly typed programming language that builds on JavaScript. It provides static type definitions and is designed to help catch errors early and improve code quality.</p>
<h3>Example Code:</h3>
<pre><code class="language-typescript">
function greet(person: string) {
    return `Hello, ${person}`;
}
let user = "Jane";
console.log(greet(user));
</code></pre>
<p>TypeScript enhances the development experience with type checking and better tooling support.</p>
<img src="https://example.com/images/typescript-logo.png" alt="TypeScript Logo">
<p>Learn more about TypeScript <a href="https://www.typescriptlang.org/docs/">here</a>.</p>',
'TypeScript,JavaScript', 'JavaScript', NOW(), NOW());
