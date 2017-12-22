<?php
class GestionTxt extends CI_Controller
{
    public function __construct()
	{
		parent::__construct();
	}
	public function index()
	{
		$this ->load -> database();
		$this->GestionTxt();
	}
	public function GestionTxt()
	{
		$this -> load -> model('import_Txt_Modele');
		$this->load ->view('Base_HTML/Header');
		
		
		$dossier = 'Téléchargements/';
		$fichier = basename($_FILES['mon_fichier']['name']);
		$extensions = array('.txt', '.xls');
		$extension = strrchr($_FILES['mon_fichier']['name'], '.'); 
		//Début des vérifications de sécurité...
		if(!in_array($extension, $extensions)) //Si l'extension n'est pas dans le tableau
		{
			 $erreur = 'Vous devez uploader un fichier de type txt ';
		}
		if(!isset($erreur)) //S'il n'y a pas d'erreur, on upload
		{
			 //On formate le nom du fichier ici...
			 $fichier = strtr($fichier, 
				  'ÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÒÓÔÕÖÙÚÛÜÝàáâãäåçèéêëìíîïðòóôõöùúûüýÿ', 
				  'AAAAAACEEEEIIIIOOOOOUUUUYaaaaaaceeeeiiiioooooouuuuyy');
			 $fichier = preg_replace('/([^.a-z0-9]+)/i', '-', $fichier);
			 if(move_uploaded_file($_FILES['mon_fichier']['tmp_name'], $dossier . $fichier)) //Si la fonction renvoie TRUE, c'est que ça a fonctionné
			 {
				  echo 'Upload effectué avec succès !';
				  echo "<br /><br />";
			 }
			 else //Sinon (la fonction renvoie FALSE).
			 {
				  echo 'Echec de l\'upload !';
			 }
		}
		else
		{
			 echo $erreur;
		}
		
		
		
		//on ouvre le fichier
		$fic=fopen($dossier . $fichier, "r"); 
		$ligne= fgets($fic);

		while(!feof($fic)) 
		{ 
		$ligne= fgets($fic); 
		$morceau = explode("	", $ligne);
		$OFID = $morceau[0];
		$EXC_NBR = $morceau[1];
		$Site = $morceau[2];
		$Statut = $morceau[3];
		$Article = $morceau[4];
		$Description = $morceau[5];
		$AchatPlanif = $morceau[6];
		$OP = $morceau[7];
		$Statut_OP = $morceau[8];
		$Centre_charge = $morceau[9];
		$Desc_centre_charge = $morceau[10];
		$Date_debut_reelle_OP = $morceau[11];
		$Date_echeance_OF = $morceau[12];
		$Date_debut_OP = $morceau[13];
		$Date_fin_OP = $morceau[14];
		$Qte_lancee_OF = $morceau[15];
		$Qte_OF_Rejet = $morceau[16];
		$Qte_terminee = $morceau[17];
		$Qte_ouverte_OF = $morceau[18];
		$Remarque = $morceau[19];
		$Qte_encours_OP = $morceau[20];
		$Charge = $morceau[21];
		$Charge_2 = $morceau[22];
		$Machine = $morceau[23];
        
		$data= array(
				'OFID' => $OFID,
				'EXC_NBR' => $EXC_NBR,
				'Site' => $Site,
				'Statut' => $Statut,
				'Article' => $Article,
				'Description' => $Description,
				'AchatPlanif' => $AchatPlanif,
				'OP' => $OP,
				'Statut_OP' => $Statut_OP,
				'Centre_charge' => $Centre_charge,
				'Desc_centre_charge' => $Desc_centre_charge,
				'Date_debut_reelle_OP' => $Date_debut_reelle_OP,
				'Date_echeance_OF' => $Date_echeance_OF,
				'Date_debut_OP' => $Date_debut_OP,
				'Date_fin_OP' => $Date_fin_OP,
				'Qte_lancee_OF' => $Qte_lancee_OF,
				'Qte_OF_Rejet' => $Qte_OF_Rejet,
				'Qte_terminee' => $Qte_terminee,
				'Qte_ouverte_OF' => $Qte_ouverte_OF,
				'Remarque' => $Remarque,
				'Qte_encours_OP' => $Qte_encours_OP,
				'Charge' => $Charge,
				'Charge_2' => $Charge_2,
				'Machine' => $Machine
		);
		
		$message = $this-> import_Txt_Modele-> insertof($data);
		echo $message;
		
		} 
		fclose($fic) ; 

		
	/*LOAD DATA LOCAL INFILE $dossier.$fichier INTO TABLE OF
	FIELDS TERMINATED BY '	'
	LINES TERMINATED BY '\r\n' 
	IGNORE 1 LINES 
	(OFID, EXC_NBR, Site, Statut, Article, Description, AchatPlanif, OP, Statut_OP, Centre_charge, Desc_centre_charge, Date_debut_reelle_OP, Date_echeance_OF, Date_debut_OP, Date_fin_OP, Qte_lancee_OF, Qte_OF_Rejet, Qte_terminee, Qte_ouverte_OF, Remarque, Qte_encours_OP, Charge, Charge_2, Machine);
	$this->query("LOAD DATA INFILE '".$dossier."".$fichier."' INTO TABLE OF CHARACTER SET latin1
                    FIELDS
                            TERMINATED BY '	'
                    LINES
                            STARTING BY '\n'
                            TERMINATED BY '\r'
                    IGNORE 1 LINES
                    (OFID, EXC_NBR, Site, Statut, Article, Description, AchatPlanif, OP, Statut_OP, Centre_charge, Desc_centre_charge, Date_debut_reelle_OP, Date_echeance_OF, Date_debut_OP, Date_fin_OP, Qte_lancee_OF, Qte_OF_Rejet, Qte_terminee, Qte_ouverte_OF, Remarque, Qte_encours_OP, Charge, Charge_2, Machine)
                    ");
	*/

	
	}
	
}
?>