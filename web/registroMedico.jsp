
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
    <body background="imagenes/fondos-verde.jpg">
        
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

        <div class="container" style="margin-top:50px">
            <header class="text-center">
                <label class="display-4 my-3">Registro de Medicos</label>
            </header>

            <div class="container offset-md-2 col-md-8">
                <form action="MedicoSe" method="post" class="my-5">
                    <div class="form-group row">
                        <label for="nombre" class="col-md-3">Nombre :</label>
                        <input type="text" class="form-control col-md-9" id="nombre" name="nombre" placeholder="Ingrese Nombre">
                    </div>
                    <div class="form-group row">
                        <label for="paterno" class="col-md-3">Apellidos :</label>
                        <input type="text" class="form-control col-md-9" id="paterno" name="apellido" placeholder="Apellido Paterno">
                    </div>
                    <div class="form-group row">
                        <label for="dni" class="col-md-3">DNI :</label>
                        <input type="text" class="form-control col-md-9" id="dni" name="dni" placeholder="Ingrese DNI">
                    </div>
                    <div class="form-group row">
                        <label for="telefono" class="col-md-3">Telefono :</label>
                        <input type="text" class="form-control col-md-9" id="telefono" name="telefono" placeholder="Ingrese Dirección">
                    </div>
                    <div class="form-group row">
                        <label for="email" class="col-md-3">Email :</label>
                        <input type="text" class="form-control col-md-9" id="email" name="email" placeholder="Ingrese Dirección">
                    </div>
                    <div class="form-group row">
                        <label for="especialidad" class="col-md-3">Especialidad :</label>
                        <select class="form-control col-md-9" id="especialidad" name="especialidad">
                            <option>Seleccione</option>
                            <option>Cardiologia</option>
                            <option>Pediatria</option>
                        </select>
                    </div>			
                    <div class="text-center">
                        <input type="submit" name="ingresar" value="Registrar" class="btn btn-primary">
                    </div>
                </form>
            </div>
        </div>
        
        <!-- footer -->
        <footer class="container-fluid bg-inverse text-white py-3 text-center">
            <p>&copy; Todos los derechos reservados</p>
        </footer>
        <!-- fin footer -->

            <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"  crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" crossorigin="anonymous"></script>        
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" crossorigin="anonymous"></script>
            
    </body>
    
</html>
