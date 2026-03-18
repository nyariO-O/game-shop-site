<?php
class DataBase{
    private $host = 'localhost';
    private $db_name = 'newgen';
    private $username = 'root';
    private $password = '';
    public $conn;

    public function getConnection(){
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
            return $this->conn;
    }
}


?>