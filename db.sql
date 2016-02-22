Create database if not exists monitior;
Use monitior;

# Creation de la table admin

CREATE TABLE if not exists admin (
  id int(11) NOT NULL AUTO_INCREMENT,
  nom text NOT NULL,
  prenom text NOT NULL,
  mail text NOT NULL,
  login text NOT NULL,
  pass_md5 text NOT NULL,
  primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Ajout de valeurs par défaut

INSERT INTO admin (id, nom, prenom, mail, login, pass_md5) VALUES
(1, "Admin", 'Admin', 'contact@defaut.fr', 'Aucune', '21232f297a57a5a743894a0e4a801fc3');


# Creation de la table servers

CREATE TABLE if not exists servers (
  id int(11) NOT NULL AUTO_INCREMENT,
  nom text NOT NULL,
  IP text NOT NULL,
  description text NOT NULL,
  user text NOT NULL,
  port int(11) NOT NULL,
  primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Ajout de valeurs par défaut

INSERT INTO servers (id, nom, IP, description, user, port) VALUES
(1, 'MyMonitor', '151.80.10.10', 'Serveur par defaut', 'contact@defaut.fr', 80);


ALTER TABLE admin
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE servers
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
