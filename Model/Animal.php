<?php

namespace Model;

class Animal
{
    protected $id_animal;
    protected $nom;
    protected $age;
    protected $male;

    /**
     * Get the value of id_animal
     */ 
    public function getId_animal()
    {
        return $this->id_animal;
    }

    /**
     * Set the value of id_animal
     *
     * @return  self
     */ 
    public function setId_animal($id_animal)
    {
        $this->id_animal = $id_animal;

        return $this;
    }

    /**
     * Get the value of nom
     */ 
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Set the value of nom
     *
     * @return  self
     */ 
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get the value of age
     */ 
    public function getAge()
    {
        return $this->age;
    }

    /**
     * Set the value of age
     *
     * @return  self
     */ 
    public function setAge($age)
    {
        $this->age = $age;

        return $this;
    }

    /**
     * Get the value of male
     */ 
    public function getMale()
    {
        return $this->male;
    }

    /**
     * Set the value of male
     *
     * @return  self
     */ 
    public function setMale($male)
    {
        $this->male = $male;

        return $this;
    }
}
