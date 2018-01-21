const express = require('express');
const twig = require('twig');

const app = express();
app.use(express.static('public'));
app.set('view engine', 'twig');

app.get('/', (req, res) => res.render('index.twig'));
app.listen(process.env.PORT || 3000, () => console.log('Listening on port 3000!'));