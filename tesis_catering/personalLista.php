<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Servicio de Catering</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

        <!-- Plugin CSS -->
        <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template -->
        <link href="css/freelancer.min.css" rel="stylesheet">

    </head>
    <body>    
        <!-- Navigation -->
    <nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav">
        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">Servicio de Catering</a>
            <button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item mx-0 mx-lg-1">
                    <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">Acerca de Nosotros</a>
                </li>
                <li class="nav-item mx-0 mx-lg-1">
                <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio">Servicios</a>
                </li>
                <li class="nav-item mx-0 mx-lg-1">
                <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">Contactanos</a>
                </li>
            </ul>
            </div>
        </div>
    </nav>
    <?php
        include("conexion.php");
        include("personal.php");
        $conexion = new ConexionDB('localhost', 'root', '', 'tesis');
        $mysqli = $conexion->getConexion();
    ?>  
    <!-- Header -->
    <header class="masthead bg-info text-white text-center">
        <div class="container">
            <div class="row">
                <div class="col-8">
                </div>  
                <div class="col-2">
                    <a class="btn mt-2 mb-3 btn-outline-dark" href="personal.html">
                        <i class="fas fa-plus-square mr-2"></i>Personal
                    </a> 
                </div>  
            </div>

            <div class="row">
                <div class="col-8 offset-2">
                    <h3>Personal</h3>
                    <table class="table">
                        <thead>
                            <tr>
                            <th scope="col">Cedula</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Sexo</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                $personal = new Personal("","","","","","");
                                $query = $personal->todos();
                                $resultados = $mysqli->query($query);
                                if ($resultados->num_rows > 0) 
                                {
                                    while($fila = $resultados->fetch_assoc()) 
                                    {
                            ?>
                                        <tr>
                                            <td><?php echo $fila['cedula']; ?></td>    
                                            <td><?php echo $fila['nombre']; ?></td>
                                            <td><?php echo $fila['apellido']; ?></td>
                                            <td><?php echo $fila['sexo']; ?></td>
                                        </tr>
                            <?php
                                    }
                                } else {
                                    echo "0 results";
                                }
                            ?>                
                         </tbody>
                    </table>
                    <?php
                        
                    ?>
                </div>
            </div>
        </div>

    </header>
        

     <!-- Bootstrap core JavaScript -->
     <script src="vendor/jquery/jquery.min.js"></script>
     <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 
     <!-- Plugin JavaScript -->
     <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
     <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
 
     <!-- Contact Form JavaScript -->
     <script src="js/jqBootstrapValidation.js"></script>
     <script src="js/contact_me.js"></script>
 
     <!-- Custom scripts for this template -->
     <script src="js/freelancer.min.js"></script>
 
   </body>
</html>