<?php 


	

 	function connect($conf){
 		$dbh = null;
		try {
		    $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
		     $dbh = new PDO("pgsql:dbname=referencement;
		                    host=localhost",
		                    'postgres',
		                    'root',
		                    $pdo_options);
		    //ini_set('arg_separator.output', '&amp;');  
		    // session_start();
		} catch (Exception $e) {
		    echo $e->getMessage();
		}
		return $dbh;
 	}

 	function disconnect($connect){
 		$connect->disconnect();
 	}
 ?>