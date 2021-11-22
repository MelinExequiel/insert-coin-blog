<?php
require_once "connection.php";
$nombre=$_POST['nombre'];
$apellido=$_POST['apellido'];
$email=$_POST['email'];
$asunto=$_POST['asunto'];
$mensaje=$_POST['mensaje'];

$obj = new connection();
$con = $obj->connect();
$sql_instruction = "INSERT INTO contacto (nombre, apellido, email, asunto, mensaje) 
values ('($nombre}', '{$apellido}', '{$email}', '{$asunto}', '{$mensaje}')";
$result = $con->prepare($sql_instruction);
$result->execute();

echo "User data {$nombre}, {$apellido}, {$email} was sent successfully";

echo "<script>document.location.href=pagina;</script>";

?>