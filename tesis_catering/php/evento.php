<?php
    class Evento{
        private $nombre;
        private $ciudad;
        private $telefono;
        private $email;
        private $fecha_hora;

        function __construct($nombre, $ciudad, $telefono, $email, $fecha_hora)
        {
            $this->nombre = $nombre;
            $this->ciudad = $ciudad;
            $this->telefono = $telefono;
            $this->email = $email;
            $this->fecha_hora = $fecha_hora;	
        }

        public function getNombre(){
            return $this->nombre;
        }
     
        public function setNombre($nombre){
            $this->nombre = $nombre;
        }

        public function getCiudad(){
            return $this->ciudad;
        }
     
        public function setCiudad($ciudad){
            $this->ciudad = $ciudad;
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

        public function getFechaHora(){
            return $this->fecha_hora;
        }
     
        public function setFechaHora($fecha_hora){
            $this->fecha_hora = $fecha_hora;
        }


        public function guardar($id_cliente){
            $query = "INSERT INTO evento(id_cliente,nombre,ciudad,telefono,email,fecha_hora) VALUES ('".$id_cliente."', '".$this->getNombre()."','".$this->getCiudad()."', '".$this->getTelefono()."','".$this->getEmail()."','".$this->getFechaHora()."')";
            return $query;
        }

        public function ultimoRegistro()
        {
           $query = "SELECT id_evento from evento  order by id_evento desc limit 1";
           return $query;
        }


        
        
    }
?>