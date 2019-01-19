<?php
//si funciona la conexion
$mysqli = new mysqli('127.0.0.1', 'root', '', 'udl');
$mysqli->set_charset("utf8");
$res = $mysqli->query("SELECT * FROM op_asistencia");

while($f = $res->fetch_object()){
    echo $f->ID_ASISTENCIA.' <br/>';
    echo $f->ID_ALUMNO.' <br/>';
    echo $f->FECHA_ASISTENCIA.' <br/>';
    echo $f->ID_ALUMNOMATERIA.' <br/>';
    echo $f->ID_MATERIA.' <br/>';
    echo $f->ID_USUARIO.' <br/>';
    echo $f->ID_FECHA.' <br/>';
    echo $f->ID_HORA.' <br/>';
    echo $f->TIPO_MOV.' <br/>';

    
}


?>
