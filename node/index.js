const express = require("express");

const app = express();
const cors = require("cors");

// require("./src/routes/customer.route")(app);
// app.use(cors({ origin: "*" }));

///handle route /Stack(
//     children: [

//     ]
// )
app.get("/", (req, res) => {
  res.send("You have request home route");
});

///handle route /about
app.get("/about", (req, res) => {
  res.send("You have request /about route");
});
///handle route /product
app.get("/product", (req, res) => {
  res.send("You have request /product route");
});
///handle route /product/create
app.get("/product/create", (req, res) => {
  var data = [
    {
      id: 101,
      name: "Coca",
      qty: 1,
      price: 10,
    },
  ];
  res.send(data);
});

const port = 8080;
app.listen(port, () => {
  console.log("https://localhost:" + port);
  console.log(`https://localhost:${port}`);
});
