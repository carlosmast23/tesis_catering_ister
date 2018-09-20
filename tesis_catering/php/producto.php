<?php
    class Producto{
        private $codigo;
        private $nombre;
        private $precio;
        private $descripcion;
        private $disponibilidad;
        private $tipo;

        function __construct($codigo, $nombre, $precio, $descripcion, $disponibilidad, $tipo)
        {
            $this->codigo = $codigo;
            $this->nombre = $nombre;
            $this->precio = $precio;
            $this->descripcion = $descripcion;
            $this->disponibilidad = $disponibilidad;
            $this->tipo = $tipo;		
        }

        public function getCodigo(){
            return $this->codigo;
        }
     
        public function setCodigo($codigo){
            $this->codigo = $codigo;
        }

        public function getNombre()
        {
            return $this->nombre;
        }

        public function setNombre($nombre)
        {
           $this->nombre = $nombre ;
        }

        public function getPrecio()
        {
            return $this->precio;
        }

        public function setPrecio($precio)
        {
            $this->precio = $precio;
        }

        public function getDescripcion()
        {
            return $this->descripcion;
        }

        public function setDescripcion($descripcion)
        {
            $this->descripcion = $descripcion;
        }

        public function getDisponibilidad()
        {
            return $this->disponibilidad;
        }

        public function setDisponibilidad($disponibilidad)
        {
            $this->disponibilidad = $disponibilidad;
        }

        public function getTipo()
        {
            return $this->tipo;
        }

        public function setTipo($tipo)
        {
            $this->tipo = $tipo;
        }

        public function guardar(){
            $query = "INSERT INTO producto(codigo,nombre,precio,descripcion,disponibilidad,tipo) VALUES ('".$this->getCodigo()."', '".$this->getNombre()."','".$this->getPrecio()."', '".$this->getDescripcion()."','".$this->getDisponibilidad()."','".$this->getTipo()."')";
            return $query;
        }

        public function todos()
        {
           $query = "SELECT Id_producto,codigo,nombre,precio from producto";
           return $query;
        }
        
    }
?>