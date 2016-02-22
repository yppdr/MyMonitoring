# MyMonitor
Monitorez vos systèmes grâce à MyMonitor! 
Panel de monitoring par le protocole icmp.
Gratuit et Open Source, facilement intégrable à votre projet, il vous permettra de surveiller en temps réel votre infrastructure (serveurs, sites, services,...)



Installation :
Il faut importer le fichier db.sql dans votre base de donnée. Ensuite, dans le fichier db_connect.php, il faut renseigner vos identifiants sql.
Les identifiants par défaut pour accéder au panel sont:
Utilisateur : contact@defaut.fr
Mot de passe : admin
Il est conseillé de supprimer ce compte et d'en créer un, avec votre adresse mail, pour recevoir les alertes.

Pour la cron, il faut la mettre toute les une minutes. Elle permet de détecter les serveurs online/offline et d'envoyer une notification si c'est offline.
Le fichier pôur la crontab est crontab.php

*/1 * * * * [votrechemin]/crontab.php
