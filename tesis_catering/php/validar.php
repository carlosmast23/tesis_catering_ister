<?php
    include("conexion.php");

    $conexion = new ConexionDB();
    $mysqli = $conexion->getConexion();
    $query = "SELECT nick, clave from personal where nick='".$_POST["nick"]."'";
    $resultado = $mysqli->query($query);
    if(mysqli_num_rows($resultado)>0){
        $fila = $resultado->fetch_array(MYSQLI_ASSOC);
        $nick= $fila['nick'];
        $clave= $fila['clave'];
    }



    if(isset($_POST["cerrar"])){
        session_start();

        // Destruir todas las variables de sesión.
        $_SESSION = array();

        // Si se desea destruir la sesión completamente, borre también la cookie de sesión.
        // Nota: ¡Esto destruirá la sesión, y no la información de la sesión!
        if (ini_get("session.use_cookies")) {
            $params = session_get_cookie_params();
            setcookie(session_name(), '', time() - 42000,
                $params["path"], $params["domain"],
                $params["secure"], $params["httponly"]
            );
        }

        // Finalmente, destruir la sesión.
        session_destroy();
        header("Location: ../index.php");
    }
    if(!isset($_POST["cerrar"])){
        if (strcmp($nick , $_POST["nick"]) === 0 && strcmp($clave , $_POST["clave"]) === 0 ){
            session_start();
            $_SESSION["usuario"] = $_POST["nick"];
            header("Location: ../index.php");
        }else{
            echo "<script> alert('No existe Usuario o Password '); window.location= '../login.html' </script>";
        }
    }
?>