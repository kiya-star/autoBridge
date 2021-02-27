const express = require('express')
const bodyParser = require("body-parser");
const mysql = require("mysql");
const cors = require("cors");
const productsroute = require("./routes/api/products");
const usersroute = require("./routes/api/users");
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

app.listen(PORT, () => {
    console.log(`Server listening at http://localhost:${PORT}`)
})