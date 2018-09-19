<?php
    class ConexionDB{
        
        private $host;
        private $usuario;
        private $clave;
        private $db;
        private $conexion;

        public function __construct($host, $usuario, $clave, $db)
        {
            $this->host = $host;
            $this->usuario = $usuario;
            $this->clave = $clave;
            $this->db = $db;
            $this->generarConexion();

        }

        private function generarConexion(){
            $this->conexion = new mysqli($this->host, $this->usuario, $this->clave, $this->db);
            /*
            * Verificar si la conexión se establecio
            */
            if ($this->conexion->connect_error) {
                die('Error de Conexión (' . $conn->connect_errno . ') '
                        . $conn->connect_error);
            }
        }

        public function getConexion()
        {
            return $this->conexion;
        }

        public function cerrarConexion(){
            $this->conexion->close();
        }
    }
?>