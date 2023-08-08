CREATE TABLE categories(
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nom varchar(255) not null,
) ;

create table articles(
	id int not null primary key auto_increment,
	titre varchar(255),
	contenu text,
	image varchar(255),
	categorie_id int not null,
	foreign key(categorie_id) references categories(id)
);

