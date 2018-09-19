<?php
include("conexion.php");
include("cliente.php");
include("evento.php");
include("producto.php");
include("personal.php");

    $conexion = new ConexionDB('localhost', 'root', '', 'tesis');
    $mysqli = $conexion->getConexion();

if(isset($_POST["btnCliente"]))
{
    if(!isset($_POST['nombre']) && !isset($_POST['apellido']) && !isset($_POST['cedula']) && !isset($_POST['direccion']) && !isset($_POST['telefono']) && !isset($_POST['email'])) {
        header('Location: cliente.html');
    }
    $cliente = new Cliente($_POST['nombre'], $_POST['apellido'], $_POST['cedula'], $_POST['direccion'], $_POST['telefono'], $_POST['email']);
    $query = $cliente->guardar();
    $mysqli->query($query);
    $conexion->cerrarConexion();
    header("location:evento.html");
}
if(isset($_POST["btnEvento"]))
{
    $cliente = new CLiente("","","","","","");
    $query = $cliente->ultimoRegistro();
    $resultado = $mysqli->query($query);
    if(mysqli_num_rows($resultado)>0){
        $fila = $resultado->fetch_array(MYSQLI_ASSOC);
        $id= $fila['id_cliente'];
    }
    $dateTime = new DateTime($_POST['fecha_hora']);
    $fechaHora = $dateTime->format('d/m/Y');
    $evento = new Evento($_POST['nombre'], $_POST['ciudad'], $_POST['telefono'], $_POST['email'], $fechaHora);
    $query = $evento->guardar($id);
    $mysqli->query($query);
    $conexion->cerrarConexion();
}
if(isset($_POST["btnProducto"]))
{
    $producto = new Producto($_POST['codigo'], $_POST['nombre'], $_POST['precio'], $_POST['descripcion'], $_POST['disponibilidad'], $_POST['tipo']);
    $query = $producto->guardar();
    $mysqli->query($query);
    $conexion->cerrarConexion();
    header("location:productoLista.php");
}

if(isset($_POST["btnPersonal"]))
{
    $personal = new Personal($_POST['cedula'], $_POST['nombre'], $_POST['apellido'], $_POST['telefono'], $_POST['direccion'], $_POST['sexo']);
    $query = $personal->guardar();
    $mysqli->query($query);
    $conexion->cerrarConexion();
    header("location:personalLista.php");
}








?>