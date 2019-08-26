<!DOCTYPE html>
<html lang="en">
<?php
include 'inc/inc.sistema.php';
include RUTA_SISTEMA . 'inc/header_sistema.php';
?>

<body class="off-canvas-sidebar">

  <!-- End Navbar -->
  <div class="wrapper wrapper-full-page">
    <div class="page-header register-page header-filter" filter-color="black" style="background-image: url('assets/img/register.jpg'); ">
      <div class="container">
        <div class="row">
          <div class="col-md-5 ml-auto mr-auto">
            <div class="card card-login card-hidden">
              <h2 class="card-title text-center">Registrarse</h2>
              <div class="card-body">
                <div class="row">

                  <div class="col m-auto">

                    <form class="form" method="" action="">
                      <div class="form-group has-default">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">
                              <i class="material-icons">face</i>
                            </span>
                          </div>
                          <input type="text" class="form-control" placeholder="Usuario">
                        </div>
                      </div>
                      <div class="form-group has-default">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">
                              <i class="material-icons">mail</i>
                            </span>
                          </div>
                          <input type="text" class="form-control" placeholder="Correo electronico">
                        </div>
                      </div>
                      <div class="form-group has-default">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">
                              <i class="material-icons">lock_outline</i>
                            </span>
                          </div>
                          <input type="password" placeholder="Contraseña" class="form-control">
                        </div>
                      </div>

                      <div class="text-center">
                        <a href="#pablo" class="btn btn-primary btn-round mt-4">Registrarse</a>
                      </div>
                    </form>
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>


    </div>
  </div>

  <!-- Archivos JavaScript  del sistema-->
  <?php include RUTA_SISTEMA . 'inc/footer_sistema.php'; ?>


  <script>
    $(document).ready(function() {
      md.checkFullPageBackgroundImage();
      setTimeout(function() {
        // after 1000 ms we add the class animated to the login/register card
        $('.card').removeClass('card-hidden');
      }, 700);
    });
  </script>

</body>

</html>

