USE E_COMMERCE ;

SELECT @@autocommit ;
SET @@autocommit = 0 ;
SET SQL_SAFE_UPDATES = 0 ;

START TRANSACTION ;
DELETE FROM USUARIOS WHERE ID = 1 ;
DELETE FROM USUARIOS WHERE ID = 3 ;
DELETE FROM USUARIOS WHERE ID = 5 ;
-- ROLLBACK ;
-- COMMIT ;

SELECT * FROM USUARIOS ;

START TRANSACTION ;

INSERT INTO PRODUCTOS (ID_CATEGORIA, NOMBRE, ID_MARCA, DESCRIPCION, STOCK, IMAGEN, PRECIO)
VALUES
('1',
'Avengers PRUEBA 0',
'1',
'`WORLD WAR SHE-HULK` Continues! After being taken prisoner by the Russian Winter Guard and sent to the notorious assassin-training academy known as the Red Room, She-Hulk has been transformed into something terrifying. And now the Winter Hulk has been unleashed upon the world. And the only one who can stop her…is Gorilla-Man?',
'15',
'https://i.annihil.us/u/prod/marvel/i/mg/c/10/612d39fef0ac2/clean.jpg',
800
),
('1',
'Avengers PRUEBA 1)',
'1',
'WORLD WAR SHE-HULK Rages On! The Red Room is the secret furnace where some of the world´s greatest assassins and super-killers have been forged. And now She-Hulk is its newest recruit. As the Avengers race to rescue Jen Walters from the Russian Winter Guard, is it too late to save She-Hulk…from going red?',
'8',
'https://i.annihil.us/u/prod/marvel/i/mg/f/40/61042030a1e84/clean.jpg',
800
),
('1',
'Avengers PRUEBA 2',
'1',
'WORLD WAR SHE-HULK! After the shocking events of “Enter the Phoenix,” the Earth has become more fractured and volatile than ever, especially for the Avengers. Once She-Hulk is declared a global menace, Russia’s mightiest heroes, the Winter Guard, are tasked with bringing Jen to justice, to face a fate no Hulk could hope to endure.',
'7',
'https://i.annihil.us/u/prod/marvel/i/mg/9/90/60d5e768d1f1c/clean.jpg',
800
),
('1',
'Avengers PRUEBA 3',
'1',
'THE AVENGERS JOIN THE BATTLE AGAINST THE KING IN BLACK! The year´s most epic event explodes in the pages of AVENGERS. The vampire hunter Blade has been at the forefront of the fight against the dark symbiote god, but now he must pay a dark price that will change his world forever.',
'7',
'https://i.annihil.us/u/prod/marvel/i/mg/3/03/60771a60d4590/clean.jpg',
800
);
SAVEPOINT SP1;

INSERT INTO PRODUCTOS (ID_CATEGORIA, NOMBRE, ID_MARCA, DESCRIPCION, STOCK, IMAGEN, PRECIO)
VALUES
('1',
'Avengers PRUEBA 4',
'1',
'`WORLD WAR SHE-HULK` Continues! After being taken prisoner by the Russian Winter Guard and sent to the notorious assassin-training academy known as the Red Room, She-Hulk has been transformed into something terrifying. And now the Winter Hulk has been unleashed upon the world. And the only one who can stop her…is Gorilla-Man?',
'15',
'https://i.annihil.us/u/prod/marvel/i/mg/c/10/612d39fef0ac2/clean.jpg',
800
),
('1',
'Avengers PRUEBA 5',
'1',
'WORLD WAR SHE-HULK Rages On! The Red Room is the secret furnace where some of the world´s greatest assassins and super-killers have been forged. And now She-Hulk is its newest recruit. As the Avengers race to rescue Jen Walters from the Russian Winter Guard, is it too late to save She-Hulk…from going red?',
'8',
'https://i.annihil.us/u/prod/marvel/i/mg/f/40/61042030a1e84/clean.jpg',
800
),
('1',
'Avengers PRUEBA 6',
'1',
'WORLD WAR SHE-HULK! After the shocking events of “Enter the Phoenix,” the Earth has become more fractured and volatile than ever, especially for the Avengers. Once She-Hulk is declared a global menace, Russia’s mightiest heroes, the Winter Guard, are tasked with bringing Jen to justice, to face a fate no Hulk could hope to endure.',
'7',
'https://i.annihil.us/u/prod/marvel/i/mg/9/90/60d5e768d1f1c/clean.jpg',
800
),
('1',
'Avengers PRUEBA 7',
'1',
'THE AVENGERS JOIN THE BATTLE AGAINST THE KING IN BLACK! The year´s most epic event explodes in the pages of AVENGERS. The vampire hunter Blade has been at the forefront of the fight against the dark symbiote god, but now he must pay a dark price that will change his world forever.',
'7',
'https://i.annihil.us/u/prod/marvel/i/mg/3/03/60771a60d4590/clean.jpg',
800
);
SAVEPOINT SP2;
-- RELEASE SAVEPOINT SP1;
-- ROLLBACK ;

SELECT * FROM PRODUCTOS;