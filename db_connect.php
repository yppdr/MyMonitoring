<?php

 $bdd_host     = "localhost"; // localhost normally works, if localhost doesn't exist contact your web host
 $bdd_db       = ""; // Database name
 $bdd_user     = ""; // Username
 $bdd_password = ""; // Password

try {
	$bdd = new PDO('mysql:host='.$bdd_host.';dbname='.$bdd_db.';charset=utf8', $bdd_user, $bdd_password);
} catch(Exception $e) {
	// En cas d'erreur, on affiche un message et on arrête tout
	die('Erreur : '.$e->getMessage());
}
?>
