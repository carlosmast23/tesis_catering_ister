<?php
include("conexion.php");
include("cliente.php");
include("evento.php");
include("producto.php");
include("personal.php");
include("pedido.php");

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
    $cliente = new Cliente("","","","","","");
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
    header("location:pedidoLista.php");

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
if(isset($_POST["btnPedido"]))
{
    //evento producto y personal
    $dateTime1 = new DateTime($_POST['fecha_pedido']);
    $fechaHora1 = $dateTime1->format('d/m/Y');
    $dateTime2 = new DateTime($_POST['fecha_entrega']);
    $fechaHora2 = $dateTime2->format('d/m/Y');
    $pedido = new Pedido($_POST['codigo'], $_POST['estado'],$fechaHora1, $fechaHora2);

    $evento = new Evento("","","","","");
    $query = $evento->ultimoRegistro();
    $resultado = $mysqli->query($query);
    if(mysqli_num_rows($resultado)>0){
        $fila = $resultado->fetch_array(MYSQLI_ASSOC);
        $idEvento = $fila['id_evento'];
    }

    $query = $pedido->guardar($idEvento,$_POST['Id_producto'],$_POST['id_personal']);
    echo $query;
    $mysqli->query($query);
    $conexion->cerrarConexion();
    header("location:pedidoLista.php");
}








?>