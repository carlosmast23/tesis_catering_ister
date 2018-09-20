<?php
    class Pedido{

        private $id_evento;
        private $Id_producto;
        private $id_personal;
        private $codigo;
        private $estado;
        private $fecha_pedido;
        private $fecha_entrega;

        function __construct($codigo, $estado, $fecha_pedido, $fecha_entrega)
        {
            //$this->id_evento = $id_evento;
            //$this->Id_producto = $Id_producto;
            //$this->id_personal = $id_personal;
            $this->codigo = $codigo;
            $this->estado = $estado;
            $this->fecha_pedido = $fecha_pedido;
            $this->fecha_entrega = $fecha_entrega;
        }

        public function getCodigo()
        {
            return $this->codigo;
        }

        public function getEstado()
        {
            return $this->estado;
        }

        public function getFechaPedido()
        {
            return $this->fecha_pedido;
        }

        public function getFechaEntrega()
        {
            return $this->fecha_entrega;
        }

        public function guardar($id_evento, $Id_producto, $id_personal){
            $query = "INSERT INTO pedido(id_evento,Id_producto,id_personal,codigo,estado,fecha_pedido,fecha_entrega) VALUES ($id_evento,$Id_producto,$id_personal, '".$this->getCodigo()."','".$this->getEstado()."','".$this->getFechaPedido()."','".$this->getFechaEntrega()."')";
            return $query;
        }

        public function todos($id)
        {
           $query = "SELECT codigo,estado from pedido where id_evento = '".$id."'";
           return $query;
        }

        public function ultimoRegistro()
        {
           $query = "SELECT Id_pedido from pedido order by Id_pedido desc limit 1";
           return $query;
        }

        
        
    }
?>