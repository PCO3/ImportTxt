
<!Doctype>
<html>

	<head>
		<meta charset="utf-8" />
    	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/test.css">
		<title> Ordonnancement </title>
		<h1> Import des OF </h1>
	</head>


	<body> 
		<form method="post" action="gestionTxt" enctype="multipart/form-data">
			<label for="mon_fichier">Fichier des OF :</label><br /><br />
			<input type="file" name="mon_fichier" id="mon_fichier" /><br /><br />
			<input type="submit" name="submit" value="Valider" />
		</form>

	</body>

</html>

