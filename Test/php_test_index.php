<?php
	/*
		Auteur: Paul Gillet
		Date: 13.12.2019
		Description: 
	*/
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form method="post" action="php_test_traitement.php">
		<div>
			<label for="firstname">Prénom *</label>
			<input type="text" name="firstname">
		</div>
		<div>
			<label for="lastname">Nom *</label>
			<input type="text" name="lastname">
		</div>
		<div>
			<input type="radio" name="genre" value="homme" checked> Homme
			<input type="radio" name="genre" value="femme"> Femme
		</div>
		<div>
			<label for="email">Date de naissance *</label>
			<input type="date" name="birthday">
		</div>
		<div>
			<label for="activity">Type d'activité </label>
			<select name="activity">  
				<option value="ADRES">Administrateur réseau</option>  
				<option value="SIG">Informaticien de gestion</option> 
			</select> 
		</div>
		<div>
			<label for="accepter">J'accepte les règles du forum</label>
			<input type="checkbox" name="accepter" value="1"> 
		</div>
		<input type="submit" value="Envoyer">
	</form>
</body>
</html>