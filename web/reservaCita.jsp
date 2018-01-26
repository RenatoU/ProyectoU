
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
        <div class="container-fluid slider justify-content-center align-items-center" >
                <header class="text-center" style="margin-top:50px">
                    <label class="display-4">Reservar Cita</label>
                </header>

                <div class="container offset-md-2 col-md-8" style="margin-top:60px">
                    <form action="ReservaSe" method="post" class="my-5">
                        <div class="form-group row">
                            <label for="especialidad" class="col-md-3">Especialidad :</label>
                            <select class="form-control col-md-9" id="especialidad" name="especialidad">
                                <option>Seleccione</option>
                                <option>Cardiologia</option>
                                <option>Pediatria</option>
                            </select>
                        </div>
                        <div class="form-group row">
                            <label for="medico" class="col-md-3">Medico :</label>
                            <select class="form-control col-md-9" id="medico" name="medico">
                                <option>Seleccione</option>
                                <option>Dr. Alberto Ramos</option>
                                <option>Dr. Julio Quispe</option>
                            </select>
                        </div>
                        <div class="form-group row">
                            <label for="example-date-input" class="col-2 col-form-label">Fecha : </label>
                            <div class="col-10">
                                <input class="form-control" type="date" value="" id="example-date-input">
                            </div>
                        </div>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <div class="form-group row">
                            <label for="medico" class="col-md-3">Hora :</label>
                            <select class="form-control col-md-9" id="medico" name="medico">
                                <option>Seleccione</option>
                                <option>8:00</option>
                                <option>8:30</option>
                            </select>
                        </div>

                        <div class="text-center">
                            <input type="submit" name="ingresar" value="Registrar" class="btn btn-primary">
                        </div>
                    </form>
                </div>

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

