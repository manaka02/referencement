<?php 
/**
 * Toavina Ralambosoa - Referencement
 */
 class Categorie extends Model
 {
 	public $idCategorie;
 	public $designation;
 	public $details;
 	public $jacket;



 	function __construct($arg = null){
		if (!empty($arg)) {
			$this->idCategorie = $arg[0];
			$this->designation = $arg[1];
			$this->details = $arg[2];
			$this->jacket = $arg[3];
		}
	}
 } 

 ?>