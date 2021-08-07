<?php

class Connexion extends PDO
{
    public function __construct()
    {

        parent::__construct(
            "mysql:dbname=zoo;host=localhost:3306;charset=UTF8",
            "root",
            ""
        );

        $this->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    }
}
