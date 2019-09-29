<?php

//header('Content-type: text/html; charset=utf-8');
define('DS', DIRECTORY_SEPARATOR);

// $servidor = "http://localhost";
$servidor = "http://sistemve.com";

#######################################################
#  CONFIGURACIÓN PARA SISTEMAS WINDOWS                #
  $sistema = "si";#
#                                                     #
#  CONFIGURACIÓN PARA SISTEMAS LINUX                  #
#$sistema = "si";        #
#######################################################
$nombre_sistema = "Sistema de Inventario";

//variables del copyright
$anio = date("Y");
$ente = "Sistema desarrollado por los ingenieros Gustavo y José Mayora";


// echo "Esta es la barra separadora " . DS ."<BR>";
define('RUTA_SISTEMA', str_replace('inc' . DS,'',dirname(__FILE__).DS));
// echo "Esta es la ruta del sistema ". RUTA_SISTEMA;






// header('Content-type: text/html; charset=utf-8');

//variables de servidor y sistema
// $servidor = 'http://localhost';         //servidor local
//$servidor       =   'http://192.168.25.78';     //servidor de desarrollo
//    $sistema        =   'sgp_v3';
// $sistema = 'sgpv3';

// $nombre_sistema = " SISTEMA DE GESTIÓN DE PROYECTOS V3.0";

//variables del copyright
// $anio = "2018";
// $ente = "Ministerio del Poder Popular de Petróleo";

// define('DS', DIRECTORY_SEPARATOR);
// define('RUTA_SISTEMA', str_replace('inc' . DS, '', dirname(__FILE__) . DS));



?>
