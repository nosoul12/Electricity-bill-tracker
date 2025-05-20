// index.js
const express = require('express');
const cors = require('cors');
require('dotenv').config();

const trackerRoutes = require('./routes/tracker');

const app = express();
const PORT = process.env.PORT || 5000;

app.use(cors());
app.use(express.json());

// app.use('/api/tracker', trackerRoutes);

// app.get('/', (req, res) => {
//   res.send('Backend running...');
// });

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
