<?php

namespace Dao;

use Connexion;

class AnimalDao extends BaseDao
{
    public function ajoutAnimal($nom , $age , $male)
    {

        $connexion = new Connexion();


        $requete = $connexion->prepare(
            "INSERT INTO animal (nom, age , male) VALUES (?,?,?)"
        );
        $requete->execute(
            [
                $nom,
                $age,
                $male
            ]
        );
    }

  
}