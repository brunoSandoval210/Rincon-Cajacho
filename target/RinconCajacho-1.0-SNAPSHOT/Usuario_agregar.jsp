<%@ include file="/include/Admin_header.jsp" %>

<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="mt-5" style="text-align: center">Agregar Usuarios</h1>
    <div class="container p-5">
        <div class="row">
            <div class="col">
            </div>
            <form action="SvRegistrarUsuario1" method="POST">
                <div class="col">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Nombre</span>
                        <input type="text" class="form-control" placeholder="" name="txtNombre" required>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Dni</span>
                        <input type="text" class="form-control" placeholder="" name="txtDNI" required>
                    </div>

                    <div class="input-group mb-3">
                        <span class="input-group-text">Email</span>
                        <input type="email" class="form-control" placeholder="" name="txtCorreo" required>

                    </div>

                    <div class="input-group mb-3">
                        <span class="input-group-text">contraseña</span>
                        <input type="password" class="form-control" placeholder="*******" name="txtContrasena" required>  
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">tipo</span>
                        <select type="text" class="form-select" aria-label="Default select example" name="txtTipo" required>
                            <option selected>Seleccionar</option>
                            <option value="Administrador">Administrador</option>
                            <option value="Cliente">Cliente</option>
                        </select>
                    </div>

                    <div class="btn btn-danger text-white w-100 mt-4 fw-semibold">
                        <input type="submit" name="btnIngresar" value="Agregar" class="btn btn-danger"/>
                    </div>
                </div>
            </form>
            <div class="col">
            </div>
        </div>
    </div> 
</div>

<%@ include file="/include/Admin_footer.jsp" %>
