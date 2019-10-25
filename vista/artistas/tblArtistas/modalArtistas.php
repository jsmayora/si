<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
  Nuevo <i class="material-icons">person</i>
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Nuevo Artista</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">


        <form>
          <div class="row">

            <div class=" col-md ml-auto mr-auto">
              <div class="form-group">
                <label class="bmd-label-floating">Nombres</label>
                <input type="text" class="form-control">
              </div>
            </div>

          </div>


          <div class="row">
            <div class="  col-md ml-auto mr-auto">
              <div class="form-group">
                <input type="text" class="form-control datepicker" value="10/06/2018">
              </div>

            </div>
          </div>

          <!-- <button type="button" class="btn  push-left" data-dismiss="modal">cerrar</button>
          <button type="submit" class="btn btn-rose pull-right">Enviar</button>
          <div class="clearfix"></div> -->
        </form>



      </div>

      <div class="modal-footer ">
        <!-- justify-content-center -->

            <button type="button" class="btn btn-secondary push-left" data-dismiss="modal">Cerrar</button>


            <button type="button" class="btn btn-primary pull-right">Guardar</button>

      </div>
    </div>
  </div>
</div>
