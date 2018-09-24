<?php
    class ConexionDB{

        private $host = 'zonalinux.com';
        private $usuario = 'c9grupo1';
        private $clave= 'Ister*2018';
        private $db= 'c9grupo1';
        private $conexion;

        public function __construct()
        {
            $this->generarConexion();

        }

        private function generarConexion(){
            $this->conexion = new mysqli($this->host, $this->usuario, $this->clave, $this->db);
            /*
            * Verificar si la conexión se establecio
            */
            if ($this->conexion->connect_error) {
                echo "Sin conexion";
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