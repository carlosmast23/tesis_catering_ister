<?php
    class Cliente{
        private $nombre;
        private $apellido;
        private $cedula;
        private $direccion;
        private $telefono;
        private $email;

        function __construct($nombre, $apellido, $cedula, $direccion, $telefono, $email)
        {
            $this->nombre = $nombre;
            $this->apellido = $apellido;
            $this->cedula = $cedula;
            $this->direccion = $direccion;
            $this->telefono = $telefono;
            $this->email = $email;		
        }

        public function getNombre(){
            return $this->nombre;
        }
     
        public function setNombre($nombre){
            $this->nombre = $nombre;
        }

        public function getApellido(){
            return $this->apellido;
        }
     
        public function setApellido($apellido){
            $this->apellido = $apellido;
        }

        public function getCedula(){
            return $this->cedula;
        }
     
        public function setCedula($cedula){
            $this->cedula = $cedula;
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

        public function getEmail(){
            return $this->email;
        }
     
        public function setEmail($email){
            $this->email = $email;
        }

        public function guardar(){
            $query = "INSERT INTO cliente(nombre,apellido,cedula,direccion,telefono,email) VALUES ('".$this->getNombre()."', '".$this->getApellido()."','".$this->getCedula()."', '".$this->getDireccion()."','".$this->getTelefono()."','".$this->getEmail()."')";
            return $query;
        }

        public function ultimoRegistro()
        {
           $query = "SELECT id_cliente from cliente  order by id_cliente desc limit 1";
           return $query;
        }

        public function verificarCedula($cedula)
        {
            $query = "SELECT cedula from cliente WHERE cedula = '".$cedula."'";
            return $query;  
        }
        
    }
?>