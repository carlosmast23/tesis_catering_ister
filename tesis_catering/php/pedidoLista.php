<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Servicio de Catering</title>

        <!-- Bootstrap core CSS -->
        <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

        <!-- Plugin CSS -->
        <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template -->
        <link href="../css/freelancer.min.css" rel="stylesheet">

    </head>
    <body>    
        <!-- Navigation -->
    <nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav">
        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="../index.html">Servicio de Catering</a>
            <button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                
            </ul>
            </div>
        </div>
    </nav>
    <?php
        include("conexion.php");
        include("evento.php");
        include("pedido.php");
        include("producto.php");
        include("personal.php");
        $conexion = new ConexionDB('localhost', 'root', '', 'tesis');
        $mysqli = $conexion->getConexion();
    ?>  
    <!-- Header -->
    <header class="masthead bg-info text-white text-center">
        <div class="container">
            <div class="row">
                <div class="col-8 offset-2">
                    <h3>PEDIDO</h3>
                    <form name="clienteForm" method="POST" action="controlador.php">
                        <div class="form-group text-left">
                            <label for="codigo">Codigo:</label>
                            <input type="text" class="form-control" name="codigo" placeholder="Ingrese un codigo" required>
                        </div>
                        <div class="form-group text-left">
                            <label for="estado">Estado:</label>
                            <select class="form-control" id="estado" name="estado">
                                <option value="a">Activo</option>
                                <option value="c">Cancelado</option>
                            </select>
                        </div>
                        <div class="form-group text-left">
                            <label for="fecha_pedido">Fecha y hora pedido:</label>
                            <input type="datetime" class="form-control" name="fecha_pedido" placeholder="Ingrese fecha y hora pedido" required>
                        </div>
                        <div class="form-group text-left">
                            <label for="fecha_entrega">Fecha y hora entrega:</label>
                            <input type="datetime" class="form-control" name="fecha_entrega" placeholder="Ingrese fecha y hora entrega" required>
                        </div>
                        <div class="form-group text-left">
                            <label for="Id_producto">Producto:</label>
                            <select class="form-control" id="Id_producto" name="Id_producto">
                                <?php
                                    $producto = new Producto("","","","","","");                             
                                    $query = $producto->todos();
                                    $resultados = $mysqli->query($query);
                                    if ($resultados->num_rows > 0) 
                                    {
                                        while($fila = $resultados->fetch_assoc()) 
                                        {
                                ?>
                                    <option value = "<?php echo $fila['Id_producto']; ?>"><?php echo $fila['nombre']; ?></option>
                                <?php
                                    }
                                } else {
                                    echo "0 results";
                                }
                                ?>                
                            </select>
                        </div>
                        <div class="form-group text-left">
                            <label for="id_personal">Personal:</label>
                            <select class="form-control" id="id_personal" name="id_personal">
                                <?php
                                    $personal = new Personal("","","","","","");                             
                                    $query = $personal->todos();
                                    $resultados = $mysqli->query($query);
                                    if ($resultados->num_rows > 0) 
                                    {
                                        while($fila = $resultados->fetch_assoc()) 
                                        {
                                ?>
                                    <option value = "<?php echo $fila['id_personal']; ?>"><?php echo $fila['nombre']." - ".$fila['apellido']; ?></option>
                                <?php
                                    }
                                } else {
                                    echo "0 results";
                                }
                                ?>                
                            </select>
                        </div>
                        <div class="form-group text-right">
                            <input id="btnPedido" class="btn btn-secondary" name="btnPedido" type="submit" value="Guardar"/>
                        </div>
                    </form>
                </div>
            </div>

            <div class="row">
                <div class="col-8 offset-2">
                    <h3>Pedido</h3>
                    <table class="table">
                        <thead>
                            <tr>
                            <th scope="col">Codigo</th>
                            <th scope="col">Estado</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                $evento = new Evento("","","","","");
                                $query = $evento->ultimoRegistro();
                                $resultado = $mysqli->query($query);
                                $id=0;
                                if(mysqli_num_rows($resultado)>0){
                                    $fila = $resultado->fetch_array(MYSQLI_ASSOC);
                                    $id= $fila['id_evento'];
                                }

                                $pedido = new Pedido("","","","");
                                $query = $pedido->todos($id);
                                $resultados = $mysqli->query($query);
                                if ($resultados->num_rows > 0) 
                                {
                                    while($fila = $resultados->fetch_assoc()) 
                                    {
                            ?>
                                        <tr>
                                            <td><?php echo $fila['codigo']; ?></td>    
                                            <td><?php echo $fila['estado']; ?></td>
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

            <div class="row">
                <div class="col-8">
                </div>  
                <div class="col-2">
                    <a class="btn mt-2 mb-3 btn-outline-dark" href="reporte.php">
                        <i class="fas fa-plus-square mr-2"></i>Generar Reporte
                    </a> 
                </div>  
            </div>
        </div>

    </header>
        

     <!-- Bootstrap core JavaScript -->
     <script src="../vendor/jquery/jquery.min.js"></script>
     <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 
     <!-- Plugin JavaScript -->
     <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
     <script src="../vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
 
     <!-- Contact Form JavaScript -->
     <script src="../js/jqBootstrapValidation.js"></script>
     <script src="../js/contact_me.js"></script>
 
     <!-- Custom scripts for this template -->
     <script src="../js/freelancer.min.js"></script>
 
   </body>
</html>