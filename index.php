<!DOCTYPE html>
<html lang="es">

    <?php
include 'inc/inc.sistema.php';
include RUTA_SISTEMA . 'inc/header_sistema.php';
?>

    <body class="off-canvas-sidebar">




        <div class="wrapper wrapper-full-page">
            <div class="page-header login-page header-filter" filter-color="black"
                style="background-image: url('assets/img/login.jpg'); background-size: cover; background-position: top center;">
                <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-8 ml-auto mr-auto">
                            <form class="form" method="" action="">
                                <div class="card card-login card-hidden">
                                    <div class="card-header card-header-rose text-center">
                                        <h4 class="card-title">Login</h4>

                                    </div>
                                    <div class="card-body ">
                                        <p class="card-description text-center">Ingrese sus datos</p>
                                        <span class="bmd-form-group">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="material-icons">face</i>
                                                    </span>
                                                </div>
                                                <input type="text" class="form-control" placeholder="Usuario">
                                            </div>
                                        </span>

                                        <span class="bmd-form-group">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">
                                                        <i class="material-icons">lock_outline</i>
                                                    </span>
                                                </div>
                                                <input type="password" class="form-control" placeholder="Contraseña">
                                            </div>
                                        </span>
                                    </div>
                                    <div class="card-footer justify-content-center">
                                        <a href="#pablo" class="btn btn-rose btn-link btn-lg">Entrar</a>
                                        <a href="#pablo" class="btn btn-rose btn-link btn-lg">Registrarse</a>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <?php include RUTA_SISTEMA . 'inc/footer_sistema.php';?>
    </body>

    <!-- script que permite mostrar el login del sistema -->
    <script>
    $(document).ready(function() {
        md.checkFullPageBackgroundImage();
        setTimeout(function() {
            // after 1000 ms we add the class animated to the login/register card
            $('.card').removeClass('card-hidden');
        }, 700);
    });
    </script>
    <!-- script que permite mostrar el login del sistema -->

</html>