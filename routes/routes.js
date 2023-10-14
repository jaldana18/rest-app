// Load the MySQL pool connection
const pool = require('../db/config');

// Route the app
const router = app => {
  
    // Display a single ticket  by ID
    app.get('/login/:id', (request, response) => {
        const id = request.params.id;

        pool.query('SELECT * FROM login WHERE cedula = ?', id, (error, result) => {
            if(!result.length){
	    	response.send(false);	
	    }else{
	    	
	        response.send(result);
	    } 
        });
    });


    // Display all tickets
    app.get('/login', (request, response) => {


        pool.query('SELECT * FROM login ', (error, result) => {
            if(!result.length){
	    	response.send(false);	
	    }else{
	    	
	        response.send(result);
	    } 
        });
    });

}

// Export the router
module.exports = router;

