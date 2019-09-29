<!DOCTYPE html>
<html lang="es">
<?php
//  Archivo de configuración del sistema
include '../inc/inc.sistema.php';

// Archivos Css del sistema
include RUTA_SISTEMA . 'inc/header_sistema.php';
?>

<body class="">
    <!-- Extra details for Live View on GitHub Pages -->
    <!-- Google Tag Manager (noscript) -->
   <!--  <noscript>
        <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6" height="0" width="0" style="display:none;visibility:hidden"></iframe>
    </noscript> -->
    <!-- End Google Tag Manager (noscript) -->
    <!-- Caja contenedora de todo el sistema -->
    <div class="wrapper ">
        <!-- Menu izquierdo del sistema -->
        <?php include RUTA_SISTEMA . 'vista/menu_left/menu_left.php'; ?>
        <!-- Fin del Menu izquierdo del sistema -->
        <!-- Cuerpo del sistema panel-admin"cuerpo_pagina.php" -->
        <!-- Barra superior del sistema -->
        <?php include RUTA_SISTEMA . 'vista/encabezado/barra_top.php'; ?>
        <!-- Fin barra superior del sistema -->

        <!-- Contenido del sistema -->
        <?php include RUTA_SISTEMA . 'vista/administacion/cuerpoAdministracionUsuarios.php'; ?>
        <!-- fin del contenido del sistema -->
        <!--  Pie de la pagina -->
        <?php include RUTA_SISTEMA . 'vista/footer/pie_pagina.php';?>
    </div>
    <!-- Fin del cuerpo de la panel admin del sistema -->
</div>
<!-- Fin de la caja contenedora de todo el sistema -->

<!-- Menu derecho del sistema -->
<?php // include RUTA_SISTEMA . 'inc/config_menu_derecho.php';?>
</body>

<!-- Archivos javascript del sistema  -->
<?php include RUTA_SISTEMA . 'inc/footer_sistema.php';?>
 <!-- este script contiene los eventos del menu izquierdo del sistema -->
<script type="text/javascript"  src="<?php echo $servidor.DS.$sistema;?>/js/sidebar.js"></script>
</html>
