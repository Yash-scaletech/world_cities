const express = require("express");
const bodyParser = require("body-parser");
var cors = require('cors')
const popularCity = require('./popular-city.js');
const cities = require('./cities.js');


const app = express();
const PORT = 7001;

// Middleware
app.use(bodyParser.json());

// Search endpoint
app.get("/search", (req, res) => {
    const searchTerm = req.query.timeZone
      ? req.query.timeZone?.replace(' ', '+')
      : req.query.name?.toLowerCase();

      // Filter cities based on the partial match of the search term
    const matchingCities = req.query.timeZone
      ? cities.filter((city) => city.timezone === searchTerm)
      : cities.filter((city) => city.name?.toLowerCase().startsWith(searchTerm));

      res.json(matchingCities);
  });  

  app.get("/popularCities", (req, res) => {
    res.json(popularCities);
  });
  

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
