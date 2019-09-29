 <div class="sidebar" data-color="rose" data-background-color="black" data-image="../assets/img/sidebar-1.jpg">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
    <!-- Logo del sistema -->
    <?php include 'logo.php'; ?>
    <!-- Fin logo del sistema -->
</div>
</div>
<div class="sidebar-wrapper">
 <?php include 'perfilUsuario.php'; ?>
 <ul class="nav">
    <!-- inicio -->
    <li class="nav-item active ">
        <a class="nav-link" href="inicio.php">
            <i class="material-icons">dashboard</i>
            <p> Inicio </p>
        </a>
    </li>
    <!-- inicio -->
    <!-- modulo 1 -->
    <li class="nav-item ">
        <a class="nav-link" data-toggle="collapse" href="#pagesExamples">
            <i class="material-icons">image</i>
            <p> Registrar
                <b class="caret"></b>
            </p>
        </a>
        <?php include 'modulos_menu_left/primer_modulo.php'; ?>
    </li>
    <!-- modulo 1 -->

    <!-- modulo 2 -->
    <!-- <li class="nav-item "> -
        <a class="nav-link" data-toggle="collapse" href="#componentsExamples">
            <i class="material-icons">apps</i>
            <p> Components
                <b class="caret"></b>
            </p>
        </a>
        <?php // include 'modulos_menu_left/segundo_modulo.php'; ?>
    </li> -->
    <!-- modulo 2 -->
    <!-- modulo 3-->
    <!-- <li class="nav-item "> -
        <a class="nav-link" data-toggle="collapse" href="#formsExamples">
            <i class="material-icons">content_paste</i>
            <p> Forms
                <b class="caret"></b>
            </p>
        </a>
        <?php// include 'modulos_menu_left/tercer_modulo.php'; ?>
    </li> -->
    <!-- modulo 3 -->
    <!-- modulo 4 -->
    <li class="nav-item ">
        <a class="nav-link" data-toggle="collapse" href="#tablesExamples">
            <i class="material-icons">settings_applications</i>
            <p> Administración
                <b class="caret"></b>
            </p>
        </a>
        <?php  include 'modulos_menu_left/cuarto_modulo.php'; ?>
    </li>
    <!-- modulo 4 -->
    <!-- modulo 5 -->
    <?php // include 'modulos_menu_left/quinto_modulo.php'; ?>
    <!-- modulo 5 -->
    <li class="nav-item ">
        <a class="nav-link" href="../index.php">
            <i class="material-icons">date_range</i>
            <p> Salir </p>
        </a>
    </li>
</ul>
</div>
</div>
