<?php
    class Personal{

        private $id_cargo;
        private $cedula;
        private $nombre;
        private $apellido;
        private $telefono;
        private $direccion;
        private $sexo;
        private $nick;
        private $clave;

        function __construct($id_cargo,$cedula, $nombre, $apellido, $telefono, $direccion, $sexo, $nick, $clave)
        {
            $this->id_cargo = $id_cargo;
            $this->cedula = $cedula;
            $this->nombre = $nombre;
            $this->apellido = $apellido;
            $this->telefono = $telefono;
            $this->direccion = $direccion;
            $this->sexo = $sexo;
            $this->nick = $nick;
            $this->clave = $clave;            		
        }

        public function getIdCargo(){
            return $this->id_cargo;
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

        public function getNick(){
            return $this->nick;
        }

        public function getClave(){
            return $this->clave;
        }

        public function guardar(){
            if(!($nick=="")){
                $query = "INSERT INTO personal(cedula,nombre,apellido,telefono,direccion,sexo) VALUES ('".$this->getCedula()."', '".$this->getNombre()."','".$this->getApellido()."', '".$this->getTelefono()."','".$this->getDireccion()."','".$this->getSexo()."')";
            }else{
                $query = "INSERT INTO personal(cedula,nombre,apellido,telefono,direccion,sexo,nick,clave) VALUES ('".$this->getCedula()."', '".$this->getNombre()."','".$this->getApellido()."', '".$this->getTelefono()."','".$this->getDireccion()."','".$this->getSexo()."','".$this->getNick()."','".$this->getClave()."')";                
            }
            
            return $query;
        }

        public function todos()
        {
           $query = "SELECT id_personal,cedula,nombre,apellido,sexo,nick from personal";
           return $query;
        }

        public function verificarCedula($cedula)
        {
            $query = "SELECT cedula from personal WHERE cedula = '".$cedula."'";
            return $query;  
        }
        
    }
?>