const express = require('express');
const app = express();
app.get('/', (req, res) => res.send('<h1>Week 3: Automation Active now</h1><p>Deployment Successful.</p>'));
app.listen(3000, () => console.log('Server running on port 3000'));
