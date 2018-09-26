<?php
	//error_reporting(0);
	class Dbconn{
		var $host;
		var $uname;
		var $psw;
		var $dbname;
		var $links;
		var $db;
		
		function Dbconn(){
			global $pdo;
			$this->host = "localhost";
			$this->uname = "student"; 		
			$this->psw = "student";					
			$this->dbname = "chapagain";
			try {
			    // new code
				$pdo = new PDO("mysql:host=$this->host;dbname=$this->dbname", $this->uname, $this->psw);
			    // set the PDO error mode to exception
			    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			    // echo "Connected successfully"; 
			}
			catch(PDOException $e){
				echo "Connection failed: " . $e->getMessage();
			}
			// die();
			// old code
			// $this->links = mysql_connect($this->host,$this->uname,$this->psw) or die("Sorry, couldnot connect to MySQL Server");
			// $this->db = mysql_select_db($this->dbname,$this->links) or die("Sorry, couldnot find database");			
			// mysql_set_charset('utf8');
		}
		
		function exec($sqlMain, $criteria){
			global $pdo;
			$stmt = $pdo->prepare($sqlMain);
			$stmt = $pdo->execute($criteria);
			return $stmt;
		}
		
		function exec2($sqlMain){
			//echo $sqlMain;
			$result = @mysql_query($sqlMain,$this->links);
			return $result;
		}
		
		function numRows($result)
		{
			return mysql_num_rows($result);			
		}
		
		function affRows()
		{
			return mysql_affected_rows();			
		}
		
		function insertId()
		{
			return mysql_insert_id();
		}
		
		function fetchArray($stmt){
			global $pdo;
			return $stmt->rowCount($stmt);
		}	
		
		function fetchObject($result)
		{
			return mysql_fetch_object($result);
		}	
		
		function fetchAssoc($result)
		{
			return mysql_fetch_assoc($result);
		}
		
		function resetFetchCounter($result)
		{
			return mysql_data_seek($result, 0);
		}
		
		function commit()
		{
			return ($this -> exec("Commit"));
		}
		
		function begin()
		{
			return ($this -> exec("Begin"));
		}
		
		function rollback()
		{
			return ($this -> exec("Rollback"));
		}
		
		function Dbclose()
		{
			mysql_close($this->links);
		}			
	}	//Dbconn ends
?>
