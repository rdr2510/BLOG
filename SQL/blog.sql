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

insert into categories (nom) values ('HOTEL');
insert into categories (nom) values ('CHALET');
insert into categories (nom) values ('MAISON');
insert into categories (nom) values ('CONDO');
insert into categories (nom) values ('APPARTEMENT');
insert into categories (nom) values ('CAMPING');


INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Chalet Enchanteur', 'Le Chalet Enchanteur est une retraite de rêve nichée au cœur de la nature. Avec son architecture charmante et ses intérieurs accueillants, il offre un refuge idéal pour les amoureux de la montagne. Les boiseries chaleureuses et les décorations inspirées de la faune locale créent une atmosphère magique. Les grandes fenêtres panoramiques encadrent des vues à couper le souffle sur les sommets enneigés et les vallées verdoyantes, apportant la beauté extérieure à l\'intérieur confortable.', 'url_image_3.jpg', 2);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Chalet Tranquille', 'Le Chalet Tranquille est l\'endroit parfait pour une retraite paisible loin du tumulte de la vie quotidienne. Niché dans un cadre isolé, il offre un espace où vous pourrez vous détendre et vous reconnecter avec la nature. L\'intérieur rustique est accentué par des détails en bois et des tons naturels, créant une ambiance apaisante. Les vastes jardins qui l\'entourent offrent un espace pour se promener et respirer l\'air frais de la montagne.', 'url_image_4.jpg', 2);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Chalet Paisible', 'Le Chalet Paisible offre une escapade tranquille pour ceux qui recherchent une retraite en pleine nature. Niché au bord d\'un lac scintillant, ce chalet combine le confort moderne avec la beauté naturelle. Les vues panoramiques depuis les fenêtres invitent à la méditation, tandis que l\'intérieur spacieux est idéal pour des moments de détente en famille et entre amis.', 'url_image_5.jpg', 2);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Chalet Montagnard', 'Le Chalet Montagnard capture l\'esprit aventureux des montagnes. Avec son extérieur en bois brut et ses intérieurs confortables, il offre un espace pour les explorateurs et les amoureux de la nature. Les cheminées en pierre et les décorations montagnardes ajoutent une touche de rusticité, tandis que les équipements modernes assurent un séjour confortable.', 'url_image_6.jpg', 2);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Chalet Sérénité', 'Le Chalet Sérénité est un havre de paix au cœur des pics enneigés. Avec sa conception élégante et minimaliste, il offre une évasion zen pour se ressourcer. Les intérieurs spacieux sont inondés de lumière naturelle, créant une ambiance apaisante. Les terrasses offrent des vues panoramiques et sont idéales pour des moments de contemplation.', 'url_image_7.jpg', 2);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Chalet Lumière', 'Le Chalet Lumière tire son nom de ses vastes baies vitrées qui inondent l\'intérieur de lumière naturelle. Situé au sommet d\'une colline, il offre une vue imprenable sur les vallées et les montagnes environnantes. L\'intérieur moderne est équilibré par des éléments naturels, créant un espace élégant et confortable.', 'url_image_8.jpg', 2);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Chalet Élégance', 'Le Chalet Élégance est un mélange de style classique et de confort moderne. Niché au milieu d\'une forêt luxuriante, il offre une évasion luxueuse pour les voyageurs exigeants. Les intérieurs somptueux sont ornés de meubles élégants et d\'œuvres d\'art raffinées. Les vastes jardins paysagers offrent des espaces pour des activités en plein air.', 'url_image_9.jpg', 2);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Chalet Tradition', 'Le Chalet Tradition capture l\'essence intemporelle de la vie montagnarde. Avec sa façade en bois vieilli et son intérieur chaleureux, il évoque des souvenirs d\'antan. Les détails artisanaux et les antiquités ajoutent une touche d\'authenticité, créant un espace où vous pouvez vous plonger dans l\'histoire locale.', 'url_image_10.jpg', 2);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Chalet Moderne', 'Le Chalet Moderne est une célébration de la simplicité et du design contemporain. Niché dans un paysage pittoresque, il offre une vue panoramique sur les montagnes et les vallées. Les intérieurs épurés et lumineux sont rehaussés par des touches de couleur, créant une ambiance dynamique.', 'url_image_11.jpg', 2);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Chalet Confort', 'Le Chalet Confort est conçu pour offrir un séjour relaxant et sans soucis. Avec son agencement spacieux et ses équipements modernes, il est parfait pour les familles et les groupes. Les espaces de vie lumineux sont parfaits pour se réunir, tandis que les chambres offrent des retraites confortables après une journée bien remplie.', 'url_image_12.jpg', 2);

-- Pour les hôtels
INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Hôtel Royal', 'L''Hôtel Royal est une destination luxueuse pour les voyageurs en quête d''élégance et de confort. Niché au cœur de la ville, il offre un mélange parfait de design moderne et de touches classiques. Les chambres somptueuses sont équipées d''installations haut de gamme, offrant un lieu de retraite après une journée de découvertes. Les restaurants gastronomiques et les espaces de bien-être complètent l''expérience exceptionnelle.', 'url_image_hotel_1.jpg', 1);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Auberge Étoile', 'L''Auberge Étoile est une escapade charmante pour les voyageurs en quête d''authenticité. Située au bord d''un lac paisible, elle offre une atmosphère sereine où le temps ralentit. Les chambres confortables sont décorées avec des éléments locaux et offrent des vues spectaculaires sur la nature environnante. Les repas préparés avec des ingrédients locaux ajoutent une saveur unique à l''expérience.', 'url_image_hotel_2.jpg', 1);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Hôtel Oasis', 'L''Hôtel Oasis est un paradis tropical en bord de plage, offrant une retraite luxueuse pour les voyageurs en quête de détente. Les chambres élégantes offrent des vues spectaculaires sur l''océan, créant une ambiance de relaxation totale. Les équipements de bien-être, les activités nautiques et les restaurants haut de gamme complètent l''expérience ultime.', 'url_image_hotel_3.jpg', 1);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('L''Auberge Cosmopolite', 'L''Auberge Cosmopolite est un point de rencontre chic pour les voyageurs du monde entier. Située au cœur de la ville, elle offre un mélange éclectique de designs et de cultures. Les chambres élégantes offrent une vue sur la skyline urbaine, tandis que les restaurants internationaux et les espaces de vie modernes ajoutent une touche cosmopolite.', 'url_image_hotel_4.jpg', 1);

-- Pour les hôtels
INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Hôtel Montagne', 'L''Hôtel Montagne est une oasis alpine, parfaitement située pour les amateurs de sports d''hiver et de randonnées estivales. Les chambres spacieuses offrent des vues panoramiques sur les sommets enneigés, créant une ambiance chaleureuse. Les installations de bien-être et les espaces de détente ajoutent une dimension de confort à votre séjour.', 'url_image_hotel_5.jpg', 1);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Hôtel Élégance Urbaine', 'L''Hôtel Élégance Urbaine est un sanctuaire de style niché dans le cœur de la ville. Les chambres somptueuses et les intérieurs élégants créent une expérience raffinée pour les voyageurs exigeants. Les restaurants gastronomiques et les espaces de divertissement ajoutent une touche de glamour à votre séjour urbain.', 'url_image_hotel_6.jpg', 1);

-- Pour les appartements
INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Appartement Moderne', 'L''Appartement Moderne offre un style de vie contemporain au cœur de la ville. Avec des intérieurs épurés et lumineux, il crée un espace élégant pour les citadins modernes. Les baies vitrées offrent des vues panoramiques sur la skyline, apportant la vie urbaine à votre porte.', 'url_image_appartement_1.jpg', 5);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Appartement Chic', 'L''Appartement Chic incarne l''élégance et le confort dans un espace compact. Chaque coin est conçu avec une attention minutieuse aux détails, créant une atmosphère luxueuse pour les résidents exigeants. Les meubles design et les touches artistiques ajoutent une touche de sophistication.', 'url_image_appartement_2.jpg', 5);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Appartement Vue sur Mer', 'L''Appartement Vue sur Mer offre une vue panoramique sur l''océan depuis chaque fenêtre. Situé en bord de plage, il crée une ambiance relaxante pour les amateurs de vie côtière. Les intérieurs contemporains sont rehaussés par des touches marines, créant une retraite maritime idéale.', 'url_image_appartement_3.jpg', 5);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Appartement Cosy', 'L''Appartement Cosy est un havre de confort dans le cœur de la ville. Les intérieurs chaleureux et accueillants créent une atmosphère réconfortante pour les résidents. Les équipements modernes et les tons doux font de cet appartement le lieu parfait pour se détendre après une journée bien remplie.', 'url_image_appartement_4.jpg', 5);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Appartement Loft Industriel', 'L''Appartement Loft Industriel offre un espace ouvert et lumineux dans un ancien bâtiment industriel rénové. Les hauts plafonds et les éléments architecturaux originaux créent une ambiance unique pour les amateurs de design urbain. Les intérieurs spacieux et la décoration minimaliste ajoutent une touche contemporaine.', 'url_image_appartement_5.jpg', 5);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Appartement Panorama', 'L''Appartement Panorama offre des vues à couper le souffle sur la ville depuis ses baies vitrées du sol au plafond. Situé en hauteur, il offre une perspective inégalée sur l''environnement urbain. Les intérieurs modernes et sophistiqués créent une atmosphère élégante pour les résidents exigeants.', 'url_image_appartement_6.jpg', 5);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Appartement Jardin Oasis', 'L''Appartement Jardin Oasis est entouré d''espaces verts luxuriants au cœur de la ville. Il offre une retraite tranquille avec des jardins privés où vous pourrez vous détendre en plein air. Les intérieurs contemporains et les équipements modernes créent une atmosphère équilibrée pour une vie urbaine paisible.', 'url_image_appartement_7.jpg', 5);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Appartement Élégant Vue sur Parc', 'L''Appartement Élégant Vue sur Parc offre des vues pittoresques sur un parc verdoyant. Les intérieurs raffinés et les meubles design créent une ambiance sophistiquée pour les résidents exigeants. Cet appartement est un équilibre parfait entre le confort moderne et le charme naturel.', 'url_image_appartement_8.jpg', 5);

-- Pour les maisons
INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Maison Familiale', 'La Maison Familiale est l''endroit idéal pour créer des souvenirs durables. Avec ses espaces spacieux et ses intérieurs chaleureux, elle offre un lieu de rassemblement pour toute la famille. Le jardin verdoyant et les commodités modernes font de cette maison un espace parfait pour la vie en famille.', 'url_image_maison_1.jpg', 3);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Maison de Campagne', 'La Maison de Campagne offre une évasion paisible de la vie urbaine. Située au milieu de vastes champs et de paysages sereins, elle crée une retraite rustique où vous pourrez vous détendre en toute tranquillité. Les intérieurs rustiques et les accents traditionnels ajoutent une touche de charme authentique.', 'url_image_maison_2.jpg', 3);

-- Pour les maisons
INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Maison de Luxe', 'La Maison de Luxe offre une vie somptueuse avec des équipements haut de gamme et des intérieurs élégants. Nichée dans un quartier exclusif, elle crée une expérience résidentielle prestigieuse. Les chambres spacieuses et les espaces de divertissement ajoutent une touche de glamour à votre quotidien.', 'url_image_maison_3.jpg', 3);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Maison Moderne en Bord de Mer', 'La Maison Moderne en Bord de Mer offre un style de vie côtière avec une vue panoramique sur l''océan. Les intérieurs contemporains sont conçus pour capturer la lumière et la brise marines, créant une atmosphère relaxante pour les résidents. Les espaces extérieurs spacieux ajoutent des possibilités de divertissement en plein air.', 'url_image_maison_4.jpg', 3);

-- Pour les condos
INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Condo Moderne en Centre-Ville', 'Le Condo Moderne en Centre-Ville offre un style de vie urbain avec des intérieurs contemporains. Situé au cœur de la ville, il crée un espace élégant pour les résidents actifs. Les équipements modernes et les commodités à proximité font de cet espace une base idéale pour explorer la ville.', 'url_image_condo_1.jpg', 4);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Condo Vue sur Rivière', 'Le Condo Vue sur Rivière offre une vue panoramique sur une rivière sereine. Les intérieurs sont conçus pour maximiser la lumière naturelle et la connexion avec la nature environnante. Les balcons spacieux offrent des espaces de détente en plein air.', 'url_image_condo_2.jpg', 4);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Condo Vue sur Parc', 'Le Condo Vue sur Parc offre des vues pittoresques sur un parc verdoyant depuis ses fenêtres. Les intérieurs élégants et les finitions haut de gamme créent une expérience de vie sophistiquée pour les résidents. Les équipements modernes et les espaces communs ajoutent une touche de confort.', 'url_image_condo_3.jpg', 4);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Condo Urbain Élégant', 'Le Condo Urbain Élégant est un havre de design au cœur de la ville. Avec des intérieurs modernes et lumineux, il offre un espace sophistiqué pour les citadins exigeants. Les espaces de vie ouverts et les finitions haut de gamme ajoutent une touche de luxe.', 'url_image_condo_4.jpg', 4);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Condo Cosy en Hauteur', 'Le Condo Cosy en Hauteur offre une vue imprenable depuis les étages élevés d''un immeuble emblématique. Les intérieurs chaleureux et les tons doux créent une atmosphère réconfortante pour les résidents. Les espaces communs modernes ajoutent des possibilités de divertissement et de détente.', 'url_image_condo_5.jpg', 4);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Condo de Charme', 'Le Condo de Charme est un espace caractéristique avec des détails uniques. Situé dans un quartier historique, il offre une ambiance authentique pour les résidents. Les intérieurs élégants et les accents traditionnels créent une expérience de vie classique.', 'url_image_condo_6.jpg', 4);

-- Pour les campings
INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Camping Naturel', 'Le Camping Naturel offre une expérience en pleine nature, niché au cœur d''une forêt luxuriante. Avec des emplacements spacieux pour les tentes et les camping-cars, il crée un environnement paisible pour les campeurs. Les sentiers de randonnée, les feux de camp et les activités en plein air font de ce camping un paradis pour les amoureux de la nature.', 'url_image_camping_1.jpg', 6);

INSERT INTO articles (titre, contenu, image, categorie_id)
VALUES ('Camping au Bord de l''Eau', 'Le Camping au Bord de l''Eau offre une escapade relaxante le long d''une rivière scintillante. Les emplacements riverains offrent une vue panoramique sur l''eau, créant une ambiance sereine. Les activités nautiques, la pêche et les espaces de détente en font un choix idéal pour les vacances estivales.', 'url_image_camping_2.jpg', 6);

