# ----------------------------------------------------------------------------
# Nom :        ???.pl
# Sujet :      
# Version :    0.1
#
# Auteur :     TP
# Cr�ation :   11/01/2019
# M�j :        11/01/2019
# ----------------------------------------------------------------------------

PROGRAMME nomduprog ;

Type Client = Enregistrement
	Nom : chaine;
	Pr�nom : chaine;
	Age : chaine;
     fin
     
var fich : chaine = "C:\Users\TP\Documents\TPDWWM\" ;
var Enr : chaine;
var f : fichier ;
var Cl : Client;    
var nomfich : chaine ;
var i : entier ;
var nbpers : entier ;
var Enr2 : chaine;

DEBUTPROG
	        afficher("saisir nom ficher");
	        saisir(nomfich);
	        nomfich <- concatener(nomfich,".txt");
	        afficher("saisir nombre personne");
	        saisir(nbpers); 
	    pour i <- 1 jusqu'a nbpers faire
	    	afficher("saisir nom");
	    	saisir(Cl.Nom);
	    	Cl.Nom <- concatener(Cl.nom,";");
	    	afficher("saisir pr�nom");
	    	saisir(Cl.Pr�nom);
	    	Cl.Pr�nom <- concatener(Cl.Pr�nom,";");
	    	afficher("saisir age");
	    	saisir(Cl.Age);
	    	Enr <- concatener(Cl.Nom,Cl.Pr�nom);
	        Enr <- concatener(Enr,Cl.Age);
	       Enr <- concatener (Enr,CRLF);
	        Enr2 <- concatener(Enr,Enr2);   
	    finp    
	       fich <- concatener(fich,nomfich);
	        
	       
	        
        SI ( Existe( fich ) ) ALORS                     
            f <- Ouvrir( fich, ModeEcriture ) ;
            Ecrire(f,Enr,longueur(Enr)+1); 
            fermer(f);
            afficher("le dossier existe");
       SINON
       	    
            f <- Cr�er( fich, ModeEcriture ) ;
            fermer(f);
            f <- Ouvrir( fich, ModeEcriture ) ;
            Ecrire(f,Enr,longueur(Enr)+1);                                       
            fermer(f);
            afficher("le dossier a �t� cr�e");
        FINSI
         
        	
        
          
FINPROG 