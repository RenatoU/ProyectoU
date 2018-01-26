
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Citas Online</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"  crossorigin="anonymous">
        <style>
            .slider{
                background: url(imagenes/fondos-verde.jpg);
                height: 100vh;
                background-size: cover;
                background-position: center;
            }
        </style>
    </head>
    <body>

        <!-- MENU -->
        <div class="container-fluid bg-inverse fixed-top text-center">
            <nav class="navbar navbar-toggleable-md navbar-light bg-faded navbar-inverse bg-inverse container">
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand" href="#">
                    Citas Medicas
                </a>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="navbar-nav ml-auto">
                        <a class="nav-item nav-link" href="index.jsp">Inicio<span class="sr-only">(current)</span></a>
                        <a class="nav-item nav-link" href="menuPaciente.jsp">Paciente</a>
                        <a class="nav-item nav-link" href="menuMedico.jsp">Medico</a>
                    </div>
                </div>
            </nav>
        </div>
        <!-- FIN MENU -->

        <!-- SLIDER -->
        <div class="container-fluid slider d-flex justify-content-center align-items-center">
            <form action="PacienteSe" method="post" class="form">
                <input type="hidden" name="login" value="login">
                <div class="form-group">
                    <label for="usuario" class="form-control-label">Usuario</label>
                    <input type="text" class="form-control" id="usuario" name="us" placeholder="Ingrese Usuario">
                </div>
                <div class="form-group">
                    <label for="contrasena">Contraseña</label>
                    <input type="password" class="form-control" id="contrasena" name="cv" placeholder="Contraseña">
                </div>
                <div class="text-center my-3">
                    <input type="submit" name="ingresar" value="Ingresar" class="btn btn-primary">
                    <input type="button" name="registrar" value="Registrarse" class="btn btn-primary">
                </div>
            </form>

        </div>
        <!-- FIN SLIDER -->

        <!-- footer -->
        <footer class="container-fluid bg-inverse text-white py-3 text-center">
            <p>&copy; Todos los derechos reservados</p>
        </footer>
        <!-- fin footer -->


        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"  crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" crossorigin="anonymous"></script>        
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </body>
</html>
