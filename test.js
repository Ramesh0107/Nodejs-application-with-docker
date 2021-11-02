const express = require('express')
const app = express()
const port = 9008

app.get('/', (req, res) => {
  res.send('Welcome to the World! hello world  world ')
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
