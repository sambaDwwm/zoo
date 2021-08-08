<?php

namespace Dao;

use Connexion;

class UtilisateurDao extends BaseDao
{

    public function ajoutUtilisateur($pseudo, $motDePasse, $admin)
    {
        $connexion = new Connexion();

        $requete = $connexion->prepare(
            "INSERT INTO utilisateur (pseudo, mot_de_passe, admin)
             VALUES (?,?,?)"
        );

        $requete->execute(
            [
                $pseudo,
                password_hash($motDePasse, PASSWORD_BCRYPT),
                $admin
            ]
        );
    }

    public function findByPseudo($pseudo)
    {
        $connexion = new Connexion();

        $requete = $connexion->prepare(
            "SELECT * FROM utilisateur WHERE pseudo = ?"
        );

        $requete->execute([$pseudo]);

        $tableauUtilisateur = $requete->fetch();

        //si un utilisateur a bien ce pseudo
        if ($tableauUtilisateur) {
            return $this->transformeTableauEnObjet($tableauUtilisateur);
        } else {
            return false;
        }
    }
    /**
     * Undocumented function
     *
     * @param [type] $id
     * @param [type] $pseudo
     * @param [type] $nomAvatar
     * @return void
     */
    public function modifierUtilisateur($id, $pseudo, $nomAvatar)
    {
        $connexion = new Connexion();

        if ($nomAvatar != "") {
            $requete = $connexion->prepare(
                "UPDATE utilisateur 
                SET pseudo = ?, nom_avatar = ?
                WHERE id = ?"
            );
            $requete->execute(
                [$pseudo, $nomAvatar, $id]
            );
        } else {
            $requete = $connexion->prepare(
                "UPDATE utilisateur 
                SET pseudo = ?
                WHERE id = ?"
            );
            $requete->execute(
                [$pseudo, $id]
            );
        }
       
    }

    
}
