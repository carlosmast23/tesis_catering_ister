<?php
    require('fpdf.php');
    include("conexion.php");
    include("evento.php");
    
        $conexion = new ConexionDB('localhost', 'root', '', 'tesis');
        $mysqli = $conexion->getConexion();

        $evento = new Evento("","","","","");
        $query = $evento->ultimoRegistro();
        $resultado = $mysqli->query($query);

        if(mysqli_num_rows($resultado)>0){
            $fila = $resultado->fetch_array(MYSQLI_ASSOC);
            $idEvento = $fila['id_evento'];
        }
        
        $query = "SELECT e.nombre as nombreEvento, e.ciudad as ciudadEvento, pr.nombre as nombreProducto, pr.precio as precioProducto, per.nombre as nombrePersonal, per.apellido as apellidoPersonal, per.cedula as cedulaPersonal, pe.codigo as pedidoCodigo, pe.estado as pedidoEstado, cli.nombre as nombreCliente, cli.apellido as apellidoCliente, cli.cedula as cedulaCliente";   
        $query .= " FROM pedido as pe";
        $query .= " INNER JOIN evento as e on pe.id_evento = e.id_evento";
        $query .= " INNER JOIN producto as pr on pe.Id_producto = pr.Id_producto";
        $query .= " INNER JOIN personal as per on pe.id_personal = per.id_personal";
        $query .= " INNER JOIN cliente as cli on e.id_cliente = cli.id_cliente";
        $query .= " where e.id_evento = ".$idEvento."";

        $resultados = $mysqli->query($query);

        $pdf = new FPDF();
        $pdf->AddPage();
        //$pdf->SetFont('Arial','B',16);
        $pdf->Image('../img/profile4.png',10,8,-300);
        $pdf->SetFont('Arial','',16);
        if ($resultados->num_rows > 0) 
        {
            while($fila = $resultados->fetch_assoc()) 
            {
                $pdf->SetFont('Arial','B',16);
                $pdf->SetXY(40, 10);$pdf->Cell(25,10,'Evento:',0,0,'L');
                $pdf->SetFont('Arial','',14);
                $pdf->Cell(30,10, $fila['nombreEvento']);
                $pdf->SetFont('Arial','B',16);
                $pdf->SetXY(40, 11);$pdf->Cell(25,20,'Ciudad:');
                $pdf->SetFont('Arial','',14);
                $pdf->Cell(30,20, $fila['ciudadEvento']);
                $pdf->SetFont('Arial','B',16);
                $pdf->SetXY(40, 22);$pdf->Cell(25,10,'Cliente:',0,0,'L');
                $pdf->SetFont('Arial','',14);
                $pdf->Cell(30,10, $fila['nombreCliente']." ".$fila['apellidoCliente']." - ".$fila['cedulaCliente']);
                break;
            }
        } else {
            //echo "0 results";
        }

        $resultados = $mysqli->query($query);

        $pdf->SetFont('Arial','B',18);
        $pdf->SetXY(10, 40); $pdf->Cell(25,10,'DETALLE PEDIDOS',0,0,'L');

        if ($resultados->num_rows > 0) 
        {
            $pdf->SetFont('Arial','B',16);
            $pdf->SetXY(10, 50); $pdf->Cell(30,10,'Pedido',0,0,'L'); $pdf->Cell(45,10,'Producto',0,0,'L'); $pdf->Cell(25,10,'Precio',0,0,'L'); $pdf->Cell(50,10,'Empleado',0,0,'L'); $pdf->Cell(25,10,'Cedula',0,0,'L');
            $c = 50;
            $suma = 0;
            while($fila = $resultados->fetch_assoc()) 
            {
                $pdf->SetFont('Arial','',12);
                $pdf->SetXY(10, $c+=10); $pdf->Cell(30,10,$fila['pedidoCodigo'],0,0,'L'); $pdf->Cell(45,10,$fila['nombreProducto'],0,0,'L'); $pdf->Cell(25,10,$fila['precioProducto'],0,0,'L'); $pdf->Cell(50,10,$fila['nombrePersonal']." ".$fila['apellidoPersonal'],0,0,'L'); $pdf->Cell(25,10,$fila['cedulaPersonal'],0,0,'L');
                $suma += $fila['precioProducto'];
            }

            $pdf->SetFont('Arial','B',12);
            $pdf->SetXY(155, $c+=10);$pdf->Cell(25,10,'TOTAL: ',0,0,'L');
            $pdf->SetFont('Arial','',12);
            $pdf->Cell(45,10,$suma,0,0,'L'); 


        } else {
            //echo "0 results";
        }


        $pdf->Output();

        $conexion->cerrarConexion();

        
?>