<?php
   $host        = "192.168.25.78";
   $port        = "5432";
   $dbname      = "bd_actualizacion_datos";
   $user = "actualizacion_datos";
   $password="actualizacion_datos*01";

   $db = pg_connect( "$host $port $dbname $user $password"  );
   if(!$db) {
      echo "Error : Unable to open database\n";
   } else {
      echo "Opened database successfully\n";
   }
?>