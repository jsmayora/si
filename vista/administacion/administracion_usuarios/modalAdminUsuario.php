<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
  Nuevo <i class="material-icons">person</i>
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Nuevo usuario</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">


        <form>

          <div class="row">

            <div class=" col-md ml-auto mr-auto">
              <div class="form-group">
                <label class="bmd-label-floating">Cedula</label>
                <input type="text" class="form-control">
              </div>
            </div>

          </div>


          <div class="row">

            <div class=" col-md ml-auto mr-auto">
              <div class="form-group">
                <label class="bmd-label-floating">Nombres</label>
                <input type="text" class="form-control">
              </div>
            </div>

          </div>


          <div class="row">

            <div class=" col-md ml-auto mr-auto">
              <div class="form-group">
                <label class="bmd-label-floating">Apellidos</label>
                <input type="text" class="form-control">
              </div>
            </div>

          </div>

          <div class="row">
            <div class="col-md ml-auto mr-auto">

              <div class="form-group">
                <label for="exampleInput1" class="bmd-label-floating">Correo Electronico (requirido)</label>
                <input type="email" class="form-control" id="exampleemalil" name="email" required>
              </div>

            </div>
          </div>

          <div class="row">

            <div class=" col-md ml-auto mr-auto">
              <div class="form-group">
                <label class="bmd-label-floating">Usuario</label>
                <input type="text" class="form-control">
              </div>
            </div>

          </div>



          <div class="row">
            <div class="col-md ml-auto mr-auto">
             <div class="form-group">
              <label for="examplePass" class="bmd-label-floating">Password</label>
              <input type="password" class="form-control" id="examplePass">
            </div>
          </div>
        </div>

        <div class="row">
          <div class="  col-md ml-auto mr-auto">
            <div class="form-group">


              <div class="form-group">
                <label for="exampleFormControlSelect2">Example multiple select</label>
                <select multiple class="form-control selectpicker" data-style="btn btn-link" id="exampleFormControlSelect2">
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>
              </div>
            </div>

          </div>
        </div>
        <div class="row">
          <div class="  col-md ml-auto mr-auto">
            <div class="form-group">
              <!-- <input type="text" class="form-control datepicker" value="10/06/2018"> -->

              <div class="form-group">
                <label for="exampleFormControlSelect2">Example multiple select</label>
                <select multiple class="form-control selectpicker" data-style="btn btn-link" id="exampleFormControlSelect2">
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>
              </div>
            </div>

          </div>
        </div>


        <button type="submit" class="btn btn-rose pull-right">Enviar</button>
        <div class="clearfix"></div>
      </form>



    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      <button type="button" class="btn btn-primary">Save changes</button>
    </div>
  </div>
</div>
</div>
