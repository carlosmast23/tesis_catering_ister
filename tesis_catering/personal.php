<?php
    class Personal{
        private $cedula;
        private $nombre;
        private $apellido;
        private $telefono;
        private $direccion;
        private $sexo;

        function __construct($cedula, $nombre, $apellido, $telefono, $direccion, $sexo)
        {
            $this->cedula = $cedula;
            $this->nombre = $nombre;
            $this->apellido = $apellido;
            $this->telefono = $telefono;
            $this->direccion = $direccion;
            $this->sexo = $sexo;		
        }

        public function getNombre(){
            return $this->nombre;
        }
     
        public function setNombre($nombre){
            $this->nombre = $nombre;
        }

        public function getCedula(){
            return $this->cedula;
        }
     
        public function setCedula($cedula){
            $this->cedula = $cedula;
        }

        public function getApellido(){
            return $this->apellido;
        }
     
        public function setApellido($apellido){
            $this->apellido = $apellido;
        }

        public function getDireccion(){
            return $this->direccion;
        }
     
        public function setDireccion($direccion){
            $this->direccion = $direccion;
        }

        public function getTelefono(){
            return $this->telefono;
        }
     
        public function setTelefono($telefono){
            $this->telefono = $telefono;
        }

        public function getSexo(){
            return $this->sexo;
        }
     
        public function setSexo($sexo){
            $this->sexo = $sexo;
        }

        public function guardar(){
            $query = "INSERT INTO personal(cedula,nombre,apellido,telefono,direccion,sexo) VALUES ('".$this->getCedula()."', '".$this->getNombre()."','".$this->getApellido()."', '".$this->getTelefono()."','".$this->getDireccion()."','".$this->getSexo()."')";
            return $query;
        }

        public function todos()
        {
           $query = "SELECT cedula,nombre,apellido,sexo from personal";
           return $query;
        }
        
    }
?>