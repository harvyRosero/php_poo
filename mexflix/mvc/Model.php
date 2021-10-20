<?php 

// conexion a myslq clase abstrabta
abstract class Model {

    // Atributos
    private static $db_host = 'localhost';
    private static $db_user = 'root';
    private static $db_pass = 'root';
    // private static $db_name = 'mexflix';
    protected $db_name;
    private static $db_charset = 'utf8';
    private $conn;
    protected $query;
    protected $rows = array();

    //Metodos

    // Metodos abstrabtos para crud 
    abstract protected function create();
    abstract protected function read();
    abstract protected function update();
    abstract protected function delete();

    // Metod privadp para conectarse a la base de datos 

    private function db_open(){
        $this->conn = new mysqli(
            self::$db_host, 
            self::$db_user, 
            self::$db_pass,
            // this porque esta poretgida
            $this->db_name   );
        
            $this->conn->set_charset(self::$db_charset);
    }

    // para desconectarse 
    private function db_close(){
        $this->conn->close();
    }

    // establecer un query simple (INSERT DELETE UPDATE)
    protected function set_query(){
        $this->db_open();
        $this->conn->query($this->query);
        $this->db_close();
    }

    // ontener los resiltados ed un query (SELECT)
    protected function get_query(){
        $this->db_open();
        $result = $this->conn->query($this->query);
        while( $this->rows[] = $result->fetch_assoc() );
        $result->close();
        $this->db_close();

        return array_pop($this->rows);
    }
}

?>