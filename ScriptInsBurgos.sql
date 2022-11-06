USE ENTREGA_3;

INSERT INTO USUARIOS (EMAIL ,NOMBRE, APELLIDO, DOMICILIO, PASSWORD, ALIAS, CELULAR, DNI)
VALUES
('pablo@mail.com','Pablo','Burgos','Calle falsa 123','password123','pburgos','1501020304','10000000'),
('martin@mail.com','Martin','Aguilera','Calle falsa 456','password456','maguilera','1510203040','20000000'),
('veronica@mail.com','Veronica','Veca','Calle falsa 789','password789','vveca','1511223344','30000000'),
('alexis@gmail.com','Alexis','Urquiza','Avenida Siempreviva 123','paspas123','aurquiza','1555667788','4000000'),
('marisol@gmail.com','Marisol','Yelamo','Avenida Siempreviva 456','paspas456','myelamo','1598765432','5000000'),
('lucia@gmail.com','Lucia','Veca','Avenida Siempreviva 789','paspas789','lveca','1564784523','6000000'),
('marisa@gmail.com','Marisa','Aguilera','Avenida Lope de Vega 123','roly123','maguilera','1515624580','6000000'),
('mercedes@gmail.com','Mercedes','Gonzalez','Avenida Segurola 4356','mcedes123','mgonzalez','1531459860','7000000'),
('oscar@gmail.com','Oscar','Burgos','Hipolito Yrigoyen 4506','salta123','oburgos','1531058045','8000000'),
('melisa@gmail.com','Melisa','Burgos','Boedo 953','cami123','mburgos','1545127099','9000000'),
('bernardo@gmail.com','Bernardo','Veca','Esquel 197','dani456','bveca','1567238045','10000000');

INSERT INTO CATEGORIAS (NOMBRE)
VALUES
('Comic'),('Manga');

INSERT INTO MARCAS (NOMBRE, IMAGEN)
VALUES
('Marvel','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYu4tnOfIrGm1L0WD6bqOTjH5AsdEzNpzBPg&usqp=CAU'),
('Kodansha','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIcSQq1oHTN8o9ZnkdtZzVF9jMvXPO2IEXWQ&usqp=CAU'),
('Ivrea','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpS9AcGpUOStu31MxZiQ2vrfkWJ1yYlEirFQ&usqp=CAU');

INSERT INTO PRODUCTOS (ID_CATEGORIA, NOMBRE, ID_MARCA, DESCRIPCION, STOCK, IMAGEN, PRECIO)
VALUES
('1',
'Avengers #48 (Variant)',
'1',
'`WORLD WAR SHE-HULK` Continues! After being taken prisoner by the Russian Winter Guard and sent to the notorious assassin-training academy known as the Red Room, She-Hulk has been transformed into something terrifying. And now the Winter Hulk has been unleashed upon the world. And the only one who can stop her…is Gorilla-Man?',
'15',
'https://i.annihil.us/u/prod/marvel/i/mg/c/10/612d39fef0ac2/clean.jpg',
'800'
),
('1',
'Avengers #47 (Variant)',
'1',
'WORLD WAR SHE-HULK Rages On! The Red Room is the secret furnace where some of the world´s greatest assassins and super-killers have been forged. And now She-Hulk is its newest recruit. As the Avengers race to rescue Jen Walters from the Russian Winter Guard, is it too late to save She-Hulk…from going red?',
'8',
'https://i.annihil.us/u/prod/marvel/i/mg/f/40/61042030a1e84/clean.jpg',
'800'
),
('1',
'Avengers #46',
'1',
'WORLD WAR SHE-HULK! After the shocking events of “Enter the Phoenix,” the Earth has become more fractured and volatile than ever, especially for the Avengers. Once She-Hulk is declared a global menace, Russia’s mightiest heroes, the Winter Guard, are tasked with bringing Jen to justice, to face a fate no Hulk could hope to endure.',
'7',
'https://i.annihil.us/u/prod/marvel/i/mg/9/90/60d5e768d1f1c/clean.jpg',
'800'
),
('1',
'Avengers #45 (Variant)',
'1',
'THE AVENGERS JOIN THE BATTLE AGAINST THE KING IN BLACK! The year´s most epic event explodes in the pages of AVENGERS. The vampire hunter Blade has been at the forefront of the fight against the dark symbiote god, but now he must pay a dark price that will change his world forever.',
'7',
'https://i.annihil.us/u/prod/marvel/i/mg/3/03/60771a60d4590/clean.jpg',
'800'
),
('1',
'Avengers #44 (Variant)',
'1',
'ENTER THE PHOENIX: THE FIERY FINALE! As the greatest heroes and villains of the Marvel Universe are trapped within the battle to decide the all-new Phoenix - a bloody battle that has narrowed to a handful of desperate combatants. Thor leads the rest of the Avengers in the fight to contain the Phoenix Force on Earth, in a quest complicated by the Thunder God´s own mysterious connection to the cosmic firebird.',
'9',
'https://i.annihil.us/u/prod/marvel/i/mg/6/70/606612cd19c8e/clean.jpg',
'800'
),
('1',
'X-Men #2 (Variant)',
'1',
'ALWAYS BET ON X! As threats hurtle toward the Earth from all sides, the fearless X-Men fight a seemingly unstoppable wave of annihilation…but even more dangerous threats lurk in the darkness, ready to strike in secret.',
'5',
'https://i.annihil.us/u/prod/marvel/i/mg/2/b0/610420b37cb57/clean.jpg',
'850'
),
('1',
'X-Men #2',
'1',
'ALWAYS BET ON X! As threats hurtle toward the Earth from all sides, the fearless X-Men fight a seemingly unstoppable wave of annihilation…but even more dangerous threats lurk in the darkness, ready to strike in secret.',
'8',
'https://i.annihil.us/u/prod/marvel/i/mg/8/c0/610411c49ebdc/clean.jpg',
'850'
),
('1',
'X-Men #1 (Variant)',
'1',
'THESE X-MEN ARE... FEARLESS! The heroes of Krakoa are here to save the planet! Things might be complicated between the nation of Krakoa and the rest of the world, but to the X-MEN, things are simple ? you do what?s right, you protect those who need protecting and you save the world we all share. Cyclops, Marvel Girl, Sunfire, Rogue, Wolverine, Synch and Polaris are the chosen champions of mutantkind, and they will not shrink from any battle for their home planet. Writer Gerry Duggan (MARAUDERS, DEADPOOL, UNCANNY AVENGERS) reteams with superstar artist Pepe Larraz (HOUSE OF X, X OF SWORDS, UNCANNY AVENGERS) to chart the course of the X-Men in a world of the Reign of X!',
'10',
'https://i.annihil.us/u/prod/marvel/i/mg/8/f0/60e5c40aa36f6/clean.jpg',
'1200'
),
('1',
'X-Men #1 (Variant 2)',
'1',
'THESE X-MEN ARE... FEARLESS! The heroes of Krakoa are here to save the planet! Things might be complicated between the nation of Krakoa and the rest of the world, but to the X-MEN, things are simple ? you do what?s right, you protect those who need protecting and you save the world we all share. Cyclops, Marvel Girl, Sunfire, Rogue, Wolverine, Synch and Polaris are the chosen champions of mutantkind, and they will not shrink from any battle for their home planet. Writer Gerry Duggan (MARAUDERS, DEADPOOL, UNCANNY AVENGERS) reteams with superstar artist Pepe Larraz (HOUSE OF X, X OF SWORDS, UNCANNY AVENGERS) to chart the course of the X-Men in a world of the Reign of X!',
'4',
'https://i.annihil.us/u/prod/marvel/i/mg/9/30/60e5c4194ea6a/clean.jpg',
'1200'
),
('1',
'X-Men #1 (Variant 3)',
'1',
'THESE X-MEN ARE... FEARLESS! The heroes of Krakoa are here to save the planet! Things might be complicated between the nation of Krakoa and the rest of the world, but to the X-MEN, things are simple ? you do what?s right, you protect those who need protecting and you save the world we all share. Cyclops, Marvel Girl, Sunfire, Rogue, Wolverine, Synch and Polaris are the chosen champions of mutantkind, and they will not shrink from any battle for their home planet. Writer Gerry Duggan (MARAUDERS, DEADPOOL, UNCANNY AVENGERS) reteams with superstar artist Pepe Larraz (HOUSE OF X, X OF SWORDS, UNCANNY AVENGERS) to chart the course of the X-Men in a world of the Reign of X!',
'7',
'https://i.annihil.us/u/prod/marvel/i/mg/8/d0/60e5c421ac71f/clean.jpg',
'1200'
),
('1',
'Daredevil #34',
'1',
'`LOCKDOWN` CONTINUES AS BULLSEYE REIGNS OVER NYC! The penultimate chapter of “Lockdown” brings twists, turns, bodies and unexpected allies.You’re not going to want to miss THE NEXT INSTALLMENT OF THIS EISNER-NOMINATED EPIC!',
'5',
'https://i.annihil.us/u/prod/marvel/i/mg/c/10/612e8dbb1fc53/clean.jpg',
'850'
),
('1',
'Daredevil #33',
'1',
'LOCKDOWN CONTINUES! Elektra faces her greatest challenge as DAREDEVIL yet, as a serial killer is on the loose in Manhattan and killing innocent people. But even the deadliest assassin in the Marvel Universe is at somewhat of a loss, because this killer can be in more than one place at one time. A team? A mutant? Or something else entirely? Whoever or whatever they are, they have a thirst for blood, and Elektra will put herself directly in their sights! PLUS: Matt Murdock faces challenges of his own in prison after being exposed to a dangerous and experimental compound called RE-CID that makes those subjected to it more aggressive and violent. Whatever happens, one thing is certain — Daredevil isn´t getting time off for good behavior…',
'7',
'https://i.annihil.us/u/prod/marvel/i/mg/3/30/610411a669e6d/clean.jpg',
'850'
),
('1',
'Daredevil #32',
'1',
'?LOCKDOWN? STARTS HERE! The Angel of Death has come to Hell?s Kitchen and New York City. A series of grisly murders tests Elektra?s mettle and commitment to her role as the new DAREDEVIL, as the city spirals in a state of near panic. Meanwhile, Matt Murdock faces tests and challenges of his own, as the inmates he?s serving time alongside aren?t the ones in the prison targeting him?',
'6',
'https://i.annihil.us/u/prod/marvel/i/mg/6/70/60fad327e5636/clean.jpg',
'850'
),
('1',
'Daredevil #31 (Variant)',
'1',
'THE DAREDEVIL ISSUE YOU CANNOT MISS! Chip Zdarsky, Marco Checchetto and all their collaborators have redefined the life of the Man Without Fear. IN THIS ISSUE, they do it all over again and, what´s more, they go a step further and UP THE ANTE! WILSON FISK´s gambit from the past few months risks upending his life and tenure as mayor! Meanwhile, MATT MURDOCK has to fend off a prison full of inmates who all want DAREDEVIL dead?and the inmates aren´t the only ones! This, as Elektra fends for herself as a DAREDEVIL all her own, fighting to protect Hell´s Kitchen?and leaving herself vulnerable in the process!',
'5',
'https://i.annihil.us/u/prod/marvel/i/mg/9/40/60dc7616eaa65/clean.jpg',
'850'
),
('1',
'Daredevil #30',
'1',
'"DOING TIME" CONTINUES! As Elektra gets her bearings in Hell´s Kitchen, Matt Murdock finds an unlikely ally in prison. Meanwhile, Wilson Fisk gets the phone call you´ve been waiting for.',
'4',
'https://i.annihil.us/u/prod/marvel/i/mg/9/00/60afe347009cc/clean.jpg',
'850'
),
('2',
'Shingeki no Kyojin (Attack on titan) #1',
'2',
'¡LA DESESPERADA BATALLA COMIENZA! La raza humana, en antagno dueña del mundo, se enfrenta a la extinción a manos de los titanes, gigantescos monstruos de inteligencia limitada que cazan y devoran personas por diversión. Los supervivientes se hacinan e intentan sobrevivir en una pequeña ciudad… pero algunos ya están hartos: ¡van a atacar!',
'13',
'https://http2.mlstatic.com/D_NQ_NP_2X_805318-MLA45788282956_052021-F.webp',
'750'
),
('2',
'Shingeki no Kyojin (Attack on titan) #2',
'2',
'NACIMIENTO DE UN MONSTRUO. Un misterioso titán aparece de la nada y ataca a sus congéneres, en apariencia protegiendo a los seres humanos. ¡¿Qué está pasando?! Nadie sabe a ciencia cierta cuál es el origen de esas misteriosas criaturas, pero… ¿cabría la posibilidad de tener a alguno del lado de la humanidad?',
'12',
'https://http2.mlstatic.com/D_NQ_NP_2X_788294-MLA45113998720_032021-F.webp',
'750'
),
('2',
'Shingeki no Kyojin (Attack on titan) #3',
'2',
'TRAIDOR. Ya no es un secreto que Eren puede convertirse en titán, pero Armin convence a sus superiores de que no le maten, sino que le utilicen para volver a sellar el muro. Pero el control de Eren sobre su álter ego no es completo y tiende a descontrolarse...',
'10',
'https://http2.mlstatic.com/D_NQ_NP_2X_608033-MLA44894445493_022021-F.webp',
'750'
),
('2',
'Shingeki no Kyojin (Attack on titan) #4',
'2',
'¡LA HUMANIDAD SE POSPONE! Se desarrolla una táctica arriesgada - llevar a Eren en su forma de titán para intentar reparar la Muralla Rose, recuperando así el territorio humano de los monstruos, por primera vez en un siglo. Pero el autocontrol de Eren está lejos de ser perfecto, y cuando él se descontrola, ni siquiera Armin puede detenerlo! Con la supervivencia de la humanidad en sus enormes hombros, ¿será Eren capaz de volver a sus sentidos, o va a perderse para siempre?',
'11',
'https://http2.mlstatic.com/D_NQ_NP_2X_757614-MLA44894447413_022021-F.webp',
'750'
),
('2',
'Shingeki no Kyojin (Attack on titan) #5',
'2',
'¿PUEDES IR A CASA OTRA VEZ? Tras desvelarse que Eren puede convertirse en titán, un consejo decide qué hacer con él, si ejecutarlo para salvar sus almas y a los habitantes de la ciudad, o destinarlo a algún cuerpo del ejército para que ayude a la humanidad.',
'11',
'https://http2.mlstatic.com/D_NQ_NP_2X_620301-MLA41663860513_052020-F.webp',
'750'
),
('2',
'Slam Dunk #1',
'3',
'Sakuragi Hanamachi, a teenager who is unpopular with girls. His latest crush is in love with a basketball player named Amano, and due to that, he starts hating the sport. Upon his latest refusal, his friends make fun of him and celebrate his 50th rejection. Sakuragi gets angry at them and headbutts his friends. After graduating from middle school, he enrolls in Shohuko High. The word basketball is off-limits, and whoever says it gets a headbutt on the forehead. After the conclusion of his class, a sad and depressed Sakuragi walks in one of the hallways of his school and notices the beautiful weather of spring outside, but due to his latest 50th rejection tells himself it is still winter inside his heart. Seeing his tall demeanor, a beautiful girl named Haruko approaches him and asks if he likes the sport of basketball. Hearing that word Sakuragi gets furious again but calms down after seeing the attractive and beautiful Haruko. He suddenly falls in love with her and declares he is an athlete and loves the sport of basketball.',
'6',
'https://http2.mlstatic.com/D_NQ_NP_2X_875731-MLA46094586369_052021-F.webp',
'900'
),
('2',
'Slam Dunk #2',
'3',
'Sakuragi, in his classroom, is daydreaming about his yesterday´s encounter at the schools basketball court. During that time, Haruko arrives and asks Hanamachi about his wellbeing. Yohei Mito, Sakuragi´s closest friend, informs Akagi not to worry cause Hanamachi´s forehead is like a solid rock. The basketball hoop is the one that should be careful. Haruko then hands out Sakuragi the basketball team registration forms and leaves. Fujii, Haruko´s best friend, informs that Hanamachi and his friends were infamous for getting in trouble in their middle school. Haruko tells Fuji, Sakuragi is a nice guy, and there is no need for her to worry.',
'6',
'https://http2.mlstatic.com/D_NQ_NP_2X_907665-MLA46375824809_062021-F.webp',
'900'
),
('2',
'Slam Dunk #3',
'3',
'At the schools rooftop, a furious Rukawa easily beats up Norio Hotta and his gang. Meanwhile, in class, Mito informs Sakuragi, seniors or no seniors, it doesn´t matter; we will give them a significant beating. Chuichirou, Nozomi, and Yuji also join them. Upon entering the schools rooftop, they notice a beaten-up Norit Hotta and his gang lying on the ground. Mito questions the first-year student if he´s the one who is responsible for this recent incident. Rukawa then introduces himself to Sakuragi and his colleagues. Hanamichi, upon hearing his name, gets furious and remembers that he is the one Haruko was mentioning. Sakuragi angrily stares at him and tries to measure his height against himself. Mito is amazed that this first-year student easily beat up the infamous Noria Hotta and his gang. While walking in one of the school hallways, Haruko glances across the window and sees an angry Sakuragi and Rukawa about to get into a fight at the schools rooftop. Agaki rushes towards them and yells at Hanamichi to stop fighting. She notices Rukawa´s injuries and informs Sakuragi that all of her friends at school were right about him, and she misjudged him for being a nice person.',
'7',
'https://http2.mlstatic.com/D_NQ_NP_2X_864808-MLA46838272129_072021-F.webp',
'900'
),
('2',
'Slam Dunk #4',
'3',
'After witnessing the terrible brawl between Sakuragi and Rukawa, Haruko informs her friends that she might have gone too far with Hanamichi. While discussing, Akagi also informs her colleagues that later after the incident, Mito, one of Hanamichi´s closest friends, met her and told her that she misjudged yesterday´s incident. Upon closing her conversation tells her friends that after school, she would later meet Hanamichi and apologize. Meanwhile, a depressed and low-spirited Sakuragi, after his class, changes his shoes and heads out. Mito and others sneakingly follow him. While heading out, a basketball out of nowhere hits Hanamichi in the face. One of the schools basketball team members approaches and apologizes to Sakuragi. Hanamichi becomes furious and yells at the first-year student and informs that he genuinely hates the sport of basketball. As soon as Hanamichi is about to hit the freshman, Mito and others stop him. Sakuragi then takes out his frustration on them by headbutting his friends. Takenori Akagi, the basketball teams captain, makes his appearance, and he furiously grabs Hanamichi from behind with the collar and throws him to the ground. Upon witnessing, Mito and his friends are amazed and frightened at Takenori Agaki´s intimidating tall appearance. Agaki then yells at his teammate to stop daydreaming and goofing around during the basketball practice session.',
'6',
'https://http2.mlstatic.com/D_NQ_NP_2X_782480-MLA47194643383_082021-F.webp',
'900'
),
('2',
'Slam Dunk #5',
'3',
'Haruko, alongside her friends, arrives at the schools court and sees that the first-year student that everyone was talking about is Sakuragi Hanamichi. Mito sees Haruko and invites her to see the anticipated match. Akagi informs that the person Hanamichi is competing against is her brother Takenori Akagi. Mito and his colleagues, upon hearing, go in panic mode. Takenori easily scores his 8th basket, and the lead widens even further. Upon seeing the skill difference between the two of them, Rukawa comments that Sakuragi can´t win. On making his recent basket, Takenori stares at Sakuragi angrily and informs him that this is his beloved sport of basketball that he just insulted. Upon witnessing, Haruko tells Mito and his colleagues that her brother is a nice person and is a bit stubborn when it comes to basketball; he is a basketball enthusiast, and he has been playing this sport since first grade.',
'6',
'https://http2.mlstatic.com/D_NQ_NP_2X_894498-MLA41780258977_052020-F.webp',
'900'
);

INSERT INTO FAVORITOS(ID_USUARIO,ID_PRODUCTO)
VALUES
('1','2'),
('1','5'),
('1','7'),
('1','10'),
('1','13'),
('1','17'),
('1','23'),
('2','1'),
('2','3'),
('2','6'),
('2','8'),
('2','9'),
('2','11'),
('2','14'),
('2','16'),
('2','18'),
('2','21'),
('3','1'),
('3','4'),
('3','5'),
('3','7'),
('3','10'),
('3','12'),
('3','15'),
('3','17'),
('3','19'),
('3','22'),
('3','25'),
('4','1'),
('4','2'),
('4','4'),
('4','8'),
('4','11'),
('4','12'),
('4','14'),
('4','18'),
('4','19'),
('4','20'),
('4','24'),
('4','25'),
('5','2'),
('5','7'),
('5','8'),
('5','9'),
('5','18'),
('5','20'),
('5','22'),
('5','23'),
('5','25'),
('6','2'),
('6','5'),
('6','8'),
('6','11'),
('6','13'),
('6','16'),
('6','19'),
('6','23'),
('7','1'),
('7','2'),
('7','6'),
('7','8'),
('7','10'),
('7','11'),
('7','15'),
('7','17'),
('7','19'),
('7','20'),
('7','22'),
('8','1'),
('8','2'),
('8','3'),
('8','4'),
('8','5'),
('8','6'),
('8','7'),
('8','8'),
('8','9'),
('8','10'),
('9','3'),
('9','8'),
('9','11'),
('9','16'),
('9','19'),
('9','25'),
('10','2'),
('10','4'),
('10','6'),
('10','8'),
('10','10'),
('10','12'),
('10','14'),
('10','16'),
('10','18'),
('10','20'),
('10','22'),
('10','24');

INSERT INTO CARRITO_COMPRAS(CANTIDAD,PRECIO_TOTAL,ID_USUARIO,ID_PRODUCTO)
VALUES
('2','1600','1','2'),
('1','800','1','4'),
('4','3400','1','7'),
('3','2550','2','11'),
('1','750','2','17'),
('5','3750','3','18'),
('7','5250','3','20'),
('1','900','4','22'),
('6','5400','4','23'),
('3','2700','5','25'),
('6','7200','5','8');

INSERT INTO ORDEN_PAGO(METODO_PAGO,FECHA_COMPRA,ESTADO_COMPRA,ID_CARRITO_COMPRA)
VALUES
('Efectivo','2022-01-19','Procesado','1'),
('Tarjeta de credito','2022-03-24','Procesado','2'),
('Tarjeta de debito','2022-04-01','Procesado','3'),
('Efectivo','2022-06-14','Procesado','4'),
('Tarjeta de debito','2022-08-31','Procesado','5'),
('Efectivo','2022-06-14','Procesado','6'),
('Efectivo','2022-08-27','Procesado','7'),
('Tarjeta de credito','2022-03-24','Procesado','8'),
('Tarjeta de credito','2022-07-14','Procesado','9'),
('Tarjeta de debito','2022-10-2','En proceso','10'),
('Tarjeta de debito','2022-10-23','En proceso','11');

INSERT INTO ORDEN_COMPRA(DETALLES_COMPRA,ID_ORDEN_PAGO)
VALUES
('Compra de 2 comics','1'),
('Compra de 1 comic','2'),
('Compra de 4 comics','3'),
('Compra de 3 comics','4'),
('Compra de 1 comic','5'),
('Compra de 5 comics','6'),
('Compra de 7 comics','7'),
('Compra de 1 comic','8'),
('Compra de 6 comics','9');

