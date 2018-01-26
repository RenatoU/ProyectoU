
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="beans.Medico"%>
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
        <div class="container-fluid slider justify-content-center align-items-center" style="margin-top:50px">
            <div class="container">
            <header class="text-center">
                <label class="display-4 my-3">Lista de Medicos</label>
            </header>
        </div>
            <table class="table">
                <thead class="thead-default">
                    <tr>
                        <th>#ID</th>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>DNI</th>
                        <th>telefono</th>
                        <th>Email</th>
                        <th>Especialidad</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Medico> lista = (List<Medico>) request.getAttribute("lista");
                    %>
                    <%for(Medico medico : lista){%>
                    <tr>
                        <td><%=medico.getId_medico()%></td>
                        <td><%=medico.getNombre()%></td>
                        <td><%=medico.getApellido()%></td>
                        <td><%=medico.getDni()%></td>
                        <td><%=medico.getTelefono()%></td>
                        <td><%=medico.getEmail()%></td>
                        <td><%=medico.getId_especilidad()%></td>
                    </tr>
                    <%};%>
                </tbody>
            </table>

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
