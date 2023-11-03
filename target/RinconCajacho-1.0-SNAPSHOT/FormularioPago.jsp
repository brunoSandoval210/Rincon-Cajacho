<%-- 
    Document   : FormularioPago
    Created on : 19 jul 2023, 18:45:34
    Author     : Bruno Sandoval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pagar</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="icon" href="img/logo.jpg">
        <script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>

    </head>

    <body class="bg-ligth">

        <div class="container">
            <div class="row">
                <div class="col py-5 text-center">
                    <h2>Formulario de Pago</h2>
                </div>
            </div>

            <div class="row">
                <!-- Formulario -->
                <div class="col-12 col-md-8 order-2 order-md-1">
                    <h4 class="mb-3">Direccion de envio</h4>
                    <form action="">
                        <!-- Nombre y apellido -->
                        <div class="row">
                            <div class="col-12 col-sm-6 mb-3">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" id="nombre" name="nombre">
                            </div>

                            <div class="col-12 col-sm-6 mb-3">
                                <label for="apellido">Apellido</label>
                                <input type="text" class="form-control" id="apellido" name="apellido">
                            </div>
                        </div>

                        <!-- Correo -->
                        <div class="mb-3">
                            <label for="correo">Correo <span class="text-muted">(Opcional)</span></label>
                            <input type="email" class="form-control" id="correo" name="correo"
                                   placeholder="nombre@correo.com">
                        </div>

                        <!-- Direccion -->
                        <div class="mb-3">
                            <label for="direccion">Direccion</label>
                            <input type="text" class="form-control" placeholder="Calle 1234" name="direccion"
                                   id="direccion">
                        </div>

                        <!-- Pais, Estado, Codifo Postal -->
                        <div class="row">
                            <!-- Pais -->
                            <div class="col-12 col-sm-4 mb-3">
                                <label for="pais">Ciudad</label>
                                <select class="form-control" name="pais" id="pais">
                                    <option value="">Seleccionar Ciudad</option>
                                    <option value="argentina">Lima</option>
                                    <option value="españa">Callao</option>
                                    <option value="alemania">Cuzco</option>
                                    <option value="japon">Trujillo</option>
                                    <option value="usa">Ica</option>
                                </select>
                            </div>
                        </div>

                        <hr class="mb-4">

                        <!-- Forma de pago -->
                        <div class="d-block mb-3">
                            <div class="custom-control custom-radio">
                                <input type="radio" name="metodo-pago" id="tarjeta-credito" class="custom-control-input"
                                       checked>
                                <label class="custom-control-label" for="tarjeta-credito">Tarjeta de Credito</label>
                            </div>

                            <div class="custom-control custom-radio">
                                <input type="radio" name="metodo-pago" id="tarjeta-debito" class="custom-control-input">
                                <label class="custom-control-label" for="tarjeta-debito">Tarjeta de debito</label>
                            </div>

                            <div class="custom-control custom-radio">
                                <input type="radio" name="metodo-pago" id="efectivo" class="custom-control-input">
                                <label class="custom-control-label" for="paypal">Efectivo</label>
                            </div>
                        </div>

                        <div class="row isEfectivo">
                            <div class="col-12 col-sm-6 mb-3">
                                <label for="tarjeta">Nombre en la tarjeta</label>
                                <input type="text" id="tarjeta" class="form-control">
                                <small class="text-muted">Nombre completo como se ve en la tarjeta</small>
                            </div>

                            <div class="col-12 col-sm-6 mb-3">
                                <label for="numero-tarjeta">Numero de tarjeta</label>
                                <input type="text" id="numero-tarjeta" class="form-control">
                            </div>
                            <div class="col-6 col-sm-4 mb-3">
                                <label for="tarjeta-expiracion">Expiracion</label>
                                <input type="text" id="tarjeta-expiracion" class="form-control">
                            </div>

                            <div class="col-6 col-sm-4 mb-3">
                                <label for="tarjeta-cvv">CVV</label>
                                <input type="text" id="tarjeta-cvv" class="form-control">
                            </div>
                        </div>

                        <hr class="mb-4">

                        <input type="submit" value="Continuar al pago" class="btn btn-block btn-lg bg-warning">


                    </form>
                </div>

                <!-- Carrito -->
                <div class="col-12 col-md-4 order-1 order-md-2">
                    <h4 class="mb-3 d-flex justify-content-between align-items-center">
                        <span class="text-muted">Tu Carrito</span>
                        <span class="badge - badge-secondary badge-pill">3</span>
                    </h4>

                    <ul class="list-group mb-3">
                        <li class="list-group-item d-flex justify-content-between">
                            <div>
                                <h6 class="my-0">Sub total</h6>
                            </div>
                            <span class="text-muted">S/60</span>
                        </li>


                        <li class="list-group-item d-flex justify-content-between bg-light">
                            <div class="text-success">
                                <h6 class="my-0">Codigo de descuento</h6>
                                <small class="text-success">GRUPO6ELMEJOR</small>
                            </div>
                            <span class="text-success">S/15</span>
                        </li>

                        <li class="list-group-item d-flex justify-content-between bg-light">
                            <span class="text-muted">Total (PEN)</span>
                            <strong>S/45</strong>
                        </li>
                    </ul>

                    <form action="" class="card p-2">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Cupon">
                            <div class="input-group-append">
                                <button class="btn btn-secondary">Canjear</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script>
            const metodoPagoRadios = document.getElementsByName("metodo-pago");
            const datosTarjetaDiv = document.querySelector(".isEfectivo");
            function mostrarOcultarCamposTarjeta() {
                if (metodoPagoRadios[2].checked) { // Efectivo seleccionado
                    datosTarjetaDiv.style.display = "none"; // Oculta los campos de datos de tarjeta
                } else {
                    datosTarjetaDiv.style.display = "block"; // Muestra los campos de datos de tarjeta
                }
            }
            metodoPagoRadios.forEach(radio => {
                radio.addEventListener("change", mostrarOcultarCamposTarjeta);
            });
            mostrarOcultarCamposTarjeta();
        </script>


    </body>

</html>