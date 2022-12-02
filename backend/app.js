import express from 'express';
import cors from 'cors';

const app = express();
const port = 8000;

app.use(cors());

const productList = [];

app.get('/', (req, res) => {
  res.send('Hello World!!!!!');
});

app.listen(port, () => {});