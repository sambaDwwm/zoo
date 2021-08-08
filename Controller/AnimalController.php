<?php

namespace Controller;

use Connexion;
use Dao\AnimalDao;

class AnimalController extends BaseController
{
   public function afficheTout()
   {
       $dao = new AnimalDao();

       $donnees = compact('listeAnimal');

       $this->afficherVue("liste-animal", $donnees);
   }
}