// Require packages and set the port
const express = require('express');
const port = 3000;
const bodyParser = require('body-parser');
const routes = require('./routes/routes')
const app = express();

// Use Node.js body parsing middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true,
}));

routes(app);

// Start the server
const server = app.listen(port, (error) => {
    if (error) return console.log(`Error: ${error}`);

    console.log(`Server listening on port ${server.address().port}`);
});


/*app.listen(3000, function(){
    console.log('app listen on port 3000');
    dbConnection.connect(function(err){
        if(err) throw err;
        console.log('database is connected!');
    })
})
*/