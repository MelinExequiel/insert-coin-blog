<?php
class connection{
    public static function connect(){
        define('server','localhost');
        define('name_db','insertcoinblog');
        define('user','root');
        define('password','');
        
        $options=array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8");
        // PDO: PHP Data Object
        try
        {
            $connection = new PDO("mysql:host=".server.";dbname=".name_db, user, password,$options);
            $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $connection;
        }
        catch (PDOException $ex)
        {
            die ("Connection error: ". $ex->getMessage());
        }
    }
}
?>