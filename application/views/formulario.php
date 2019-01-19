<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title> Pagina de control escolar UDL</title>
	<style>
		body{
			font-family:Arial, "Helvetica";
			
	}
	 </style>
</head>
<body>

<div id="container">
	<h1>P&aacutegina de asistencia alumno</h1>
<html>
<head>
<title>Formulario HTML</title>
<meta charset="utf8">
</head>
<body>

 
<!--FORMULARIO-->
<form action="procesar.php" method="post" background="bk.jpg">
<p>Id Asistencia:  	  <input type="text"  name="Id Asistencia"  /> </p>

<p>Id Alumno: <input type="text"  name="Id Alumno"  /> </p>

<p>Fecha Asistencia <input type="text"  name="Fecha" /> </p>
<p>Materia <input type="text"  name="Id Materia" /> </p>
<p>Usuario <input type="text"  name="id Usuario" /> </p>
<p>Fecha <input type="date"  name="Fecha2" /> </p>
<p>Hora <input type="time"  name="Fecha" /> </p>
<p>Tipo movimiento <input type="text"  name="Alta o Baja" /> </p>

<p><input type="submit" value="Consultar" <?php  ?>/> </p> <p><input type="submit" value="Salir " /> </p>

</form>
 
</body>
</html>

</body>
</html>