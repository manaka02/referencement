<?php 
/**
 * Toavina Ralambosoa - Referencement
 */
 class Produit extends Model
 {
 	public $idproduit;
 	public $idCategorie;
 	public $codeproduit;
 	public $designation;
 	public $details;
 	public $link;
 	public $prix;
 	public $couleur;
 	public $dateAjout;
 	public $image1;
 	public $image2;
 	public $image3;
 	public $image4;

 	function __construct($arg){
		if (!empty($arg)) {
			$this->idproduit = $arg[0];
			$this->idCategorie = $arg[1];
			$this->codeproduit = $arg[2];
			$this->constructeur = $arg[3];
			$this->details = $arg[4];
			$this->link = $arg[5];
			$this->prix = $arg[6];
			$this->couleur = $arg[7];
			$this->dateAjout = $arg[8];
			$this->image1 = $arg[9];
			$this->image2 = $arg[10];
			$this->image3 = $arg[11];
			$this->image4 = $arg[12];
		}
	}
 } 

 ?>