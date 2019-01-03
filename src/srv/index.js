const express = require('express');
const path = require('path')

const PORT = 8080;
const HOST = '0.0.0.0';

const app = express();
app.get('/', (req, res, next) => {
  res.sendFile(path.resolve('./dist/index.html'))
});

app.listen(PORT, HOST);
