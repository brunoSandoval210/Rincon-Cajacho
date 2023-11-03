
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>


<%
    HttpSession ses = request.getSession();
    if (request.getParameter("cerrar") != null) {
        session.invalidate();
        response.sendRedirect("Inicio.jsp");
        }
%> 


<!DOCTYPE html>

    <html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" href="footer.css">
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="icon" href="img/logo.png">
        <title>RincónCajacho</title>
    </head>

    <body>

     
        <main class="bg-danger-subtle d-flex justify-content-center align-items-center vh-100">
            <div class="bg-white p-5 rounded-5 text-secondary" style="width: 25rem;">
                <div class="d-flex justify-content-center">
                    <img src="img/logo.png" alt="login-icon" style=" height: 7rem"/>
                </div>
                <div class="text-center fs-1 fw-bold">Iniciar sesion</div>              

                <form action="SvLogin" method="POST">
                    <div class="input-group mt-4">
                        <div class="input-group-text bg-danger">
                            <img src="img/user_logo.png" alt="username-icon" style="height: 1rem"/>
                        </div>
                        <input class="form-control bg-light" type="text" placeholder="Username@example.com" name="txtCorreo" >
                    </div>
                    <div class="input-group mt-1">
                        <div class="input-group-text bg-danger">
                            <img src="img/password_logo.png" alt="password-icon" style="height: 1rem"/>
                        </div>
                        <input class="form-control bg-light" type="password" placeholder="**********" name="txtContrasena">
                    </div>
                    <div class="btn btn-danger text-white w-100 mt-4 fw-semibold">
                        <input type="submit" name="btnIngresar" value="Ingresar" class="btn btn-block"/>
                    </div>
                </form>   

                <div class="d-flex gap-1 justify-content-center mt-1">
                    <div>No tengo una cuenta</div>
                    <a href="Inicio.jsp" class="txt-decoration-none text-danger fw-semibold">Regresar</a>
                    <p style="color: red;"></p>
                </div>
            </div>
        </main>
        
        
