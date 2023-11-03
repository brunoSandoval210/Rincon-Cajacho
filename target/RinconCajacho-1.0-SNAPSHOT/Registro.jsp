

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%@include file="include/general_header.jsp" %> 
        <main class="bg-danger-subtle d-flex justify-content-center align-items-center vh-100">
            <div class="bg-white p-5 rounded-5 text-secondary" style="width: 25rem;">
                <div class="d-flex justify-content-center">
                    <img src="img/logo.png" alt="login-icon" style=" height: 7rem"/>
                </div>
                <div class="text-center fs-1 fw-bold">Registro</div>              

                <form action="SvRegistrarUsuario" method="POST">
                    <div class="input-group mt-1">
                        <label class="input-group-text bg-danger">
                            Nombre:
                        </label>
                        <input class="form-control bg-light" type="text"  name="txtNombre" required >
                    </div>
                    <div class="input-group mt-1">
                        <label class="input-group-text bg-danger">
                            DNI:
                        </label>
                        <input class="form-control bg-light" type="text"  name="txtDNI" required >
                    </div>
                    <div class="input-group mt-1">
                        <label class="input-group-text bg-danger">
                            Email:
                        </label>
                        <input class="form-control bg-light" type="email"  name="txtCorreo" required>
                    </div>
                    <div class="input-group mt-1">
                        <label class="input-group-text bg-danger">
                           Password: 
                        </label>
                        <input class="form-control bg-light" type="password" name="txtContrasena" required>
                    </div>
                    <div class="btn btn-danger text-white w-100 mt-4 fw-semibold">
                        <input type="submit"  class="btn btn-block" value="Registrar"/>
                    </div>
                </form> 
   
            </div>
        </main>
    </body>
</html>
