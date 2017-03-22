<?php 
/**
 * 
 */
 class Model
 {
 	
	public function find($req){
		$sql = "SELECT * FROM ".get_class($this).' ';

		//construction des conditions pour gerer les erreurs
		if(isset($req['conditions'])){
			$sql .= ' WHERE ';
			if(!array($req['conditions'])){
				$sql .= $req['conditions'];
			}else{
				$cond = array();
				foreach ($req['conditions'] as $key => $value) {
					if(!is_numeric($value)){
						$value = "'".mysql_escape_string($value)."'";   //protege la chaîne de caractère
					}
					$cond[] = "$key = $value";
				}

				$sql.=implode(' AND ', $cond);   //Rassemble les éléments d'un tableau en une chaîne avec un separateur désigné
			} 
		}
		$connect = connect(Conf::$databases['default']);
		$pre = $connect->prepare($sql);
		$pre->execute();
		return $pre->FetchAll(PDO::FETCH_OBJ);
	}

	public function findFirst($req){
		return current($this->find($req));   //current: ne retourne qu'une seule reponse
	}


	public function insert($req){
		//mettre dans un tableau la liste des attributs d'une classe et ses donnees
		$listColumn = array();
		$class_vars = get_class_vars(get_class($this)); 
		foreach ($class_vars as $name => $value) {
		    $listColumn[] = $name;
		}

		$listValue = array();
		//mise en forme des donnees selon le type de donnees
		foreach ($req as $key => $value) {
			if(!is_numeric($value)){
				$value = "'".mysql_escape_string($value)."'";   //protege la chaîne de caractère
			}
			$listValue[] = $value;
		}

		if(count($listValue) == count($listColumn)){
			$sql = "INSERT INTO ".get_class($this).' ('.implode(',', $listColumn).') VALUES ('.implode(',',$listValue).')';
		}
		$connect = connect(Conf::$databases['default']);
		$pre = $connect->prepare($sql);
		$pre->execute();
	}

	public function insertManual($listColumn,$req){
		$listValue = array();
		//mise en forme des donnees selon le type de donnees
		foreach ($req as $key => $value) {
			if(!is_numeric($value)){
				$value = "'".mysql_escape_string($value)."'";   //protege la chaîne de caractère
			}
			$listValue[] = $value;
		}

		if(count($listValue) == count($listColumn)){
			$sql = "INSERT INTO ".get_class($this).' ('.implode(',', $listColumn).') VALUES ('.implode(',',$listValue).')';
		}

		$connect = connect(Conf::$databases['default']);
		$pre = $connect->prepare($sql);
		$pre->execute();
		$id = $connect->lastInsertId();
		return $id;
	}
 
 } 
 ?>