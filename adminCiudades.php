<html>
<head>
</head>
<body>
<form method="post" action="adminCiudades.php">
<input type="text" name="ciudad"><br>
<input type="text" name="descripcion"><br>
<input type="submit" name="btAlta" value="alta">
</form>
<?php
	session_start();
	if (!isset($_SESSION["UsuarioValidado"])){
        	header('Location: entrar.php');
    }
if (isset($_POST["btAlta"])){
	$servername = "localhost";
	$username = "id3642448_root";
	$password = "A123456789";
	$dbname = "id3642448_bdciudades";
	try {
		$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	
		$stmt = $conn->prepare("Insert INTO tbciudades
		 (ciudad,descripcion) values (?, ?)");
		$stmt->execute(
			array($_POST["ciudad"],
				$_POST["descripcion"]
				)
			);
		$autonumerico = $conn->lastInsertId();
		return $autonumerico;
	}
	catch(PDOException $e) {
		echo "Error: " . $e->getMessage();   		
	}
	$conn = null;
}
?>
</body>
</html>