const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');
const multer = require('multer');
const cors = require('cors');

const app = express();
app.use(bodyParser.json());
app.use(cors());

// MySQL connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'ranga',
    password: 'ranga123',
    database: 'simple_blog'
});

db.connect(err => {
    if (err) throw err;
    console.log('MySQL Connected...');
});

// Multer setup (for handling image uploads)
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, 'uploads/');
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + '-' + file.originalname);
    }
});
const upload = multer({ storage: storage });

// Routes
app.post('/api/posts', upload.single('image'), (req, res) => {
    const { title, content, tags,category } = req.body;
    const imagePath = req.file ? `/uploads/${req.file.filename}` : null;
    const fullContent = imagePath ? `${content} <img src="${imagePath}" />` : content;
    
    const sql = 'INSERT INTO posts (title, content,tags,category) VALUES (?, ?,?,?)';
    db.query(sql, [title, fullContent,tags,category], (err, result) => {
        if (err) throw err;
        res.json({ id: result.insertId, title, content: fullContent });
    });
});

app.get('/api/posts', (req, res) => {
    const limit = parseInt(req.query.limit) || 10;  // Default to 10 posts per request
    const offset = parseInt(req.query.offset) || 0; // Default to starting from the first post
    
    const sql = 'SELECT * FROM posts ORDER BY updated_date DESC LIMIT ? OFFSET ?';
    db.query(sql, [limit, offset], (err, results) => {
        if (err) throw err;
        res.json(results);
    });
});


app.get('/api/posts/:id', (req, res) => {
    const sql = 'SELECT * FROM posts WHERE id = ?';
    db.query(sql, [req.params.id], (err, result) => {
        if (err) throw err;
        res.json(result[0]);
    });
});

// Get all posts with search, category, and tag filters
// app.get('/api/search', async (req, res) => {
//     const query = req.query.q || '';
//     const category = req.query.category || '';
//     const tag = req.query.tag || '';

//     let sql = 'SELECT * FROM posts WHERE (title LIKE ? OR content LIKE ?)';
//     let params = [`%${query}%`, `%${query}%`];

//     if (category) {
//         sql += ' AND category = ?';
//         params.push(category);
//     }

//     if (tag) {
//         sql += ' AND tags LIKE ?';
//         params.push(`%${tag}%`);
//     }

//     db.query(sql, params, (err, results) => {
//         if (err) {
//             return res.status(500).json({ error: err.message });
//         }
//         res.json(results);
//     });
// });

app.get('/api/search', async (req, res) => {
    const urlParams = new URLSearchParams(req.url);
    const searchInput = urlParams.get('searchInput');
    let params = [searchInput];

    let sql = 'SELECT * FROM posts WHERE (title LIKE ? OR content LIKE ?)';

    db.query(sql, params, (err, results) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        res.json(results);
    });
});

app.listen(3000, () => console.log('Server running on port 3000'));
