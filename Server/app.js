const express = require('express')
const bodyParser = require("body-parser");
const mysql = require("mysql");
const cors = require("cors");
const path = require("path")
const productsroute = require("./routes/api/products");
const usersroute = require("./routes/api/users");
const https = require('https')
const fs = require('fs')
const app = express();

//Middleware
app.use(bodyParser.json());;
app.use(cors());

//route
app.use("/products", productsroute);
app.use("/users", usersroute);

// static folder
app.use(express.static('Server/UProduct/Images'))
app.use(express.static('Server/Uprofile/Images'))

app.get('/', (req, res) => {
    res.send({ api: "Express api " })

});
const PORT = process.env.PORT || 5000;
const httpsOptions = {
    key: fs.readFileSync(path.join(__dirname, "security", "server.key")),
    cert: fs.readFileSync(path.join(__dirname, "security", "server.cert"))
}
const server = https.createServer(httpsOptions, app)
    .listen(PORT, () => {
        console.log('server running at https://localhost:' + PORT)
    })