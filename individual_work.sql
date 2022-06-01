create table cities (
  id int4 primary key CHECK(id > 0 AND id < 113),
  name char(255),
  location char(255)
);	

CREATE TABLE additional_information ( 
  area_km2 real CHECK(area_km2 > 0),
  population_thousands real CHECK(population_thousands > 0),
  date_of_foundation int4 CHECK(date_of_foundation > 0 AND date_of_foundation < 2022),
  fk_id int primary key CHECK(fk_id > 0 AND fk_id < 113),
  foreign key (fk_id) references cities (id) ON DELETE CASCADE ON UPDATE CASCADE 
);

insert into cities values (1, 'Minsk', 'center');
insert into cities values (2, 'Brest', 'south-west');
insert into cities values (3, 'Vitebsk', 'north-east');
insert into cities values (4, 'Gomel', 'south-east');
insert into cities values (5, 'Grodno', 'west');
insert into cities values (6, 'Mogilev', 'east');

insert into additional_information values (348.8, 2009.7, 1067, 1);
insert into additional_information values (146.1, 340.3, 1019, 2);
insert into additional_information values (124.5, 362.9, 974, 3);
insert into additional_information values (139.8, 507.7, 1142, 4);
insert into additional_information values (142.1, 357.5, 1128, 5);
insert into additional_information values (118.5, 357.4, 1267, 6);

CREATE TABLE transport ( 
  id int4 primary key CHECK(id > 0 AND id < 113),
  type char(255),
  price_euro real CHECK(price_euro > 0),
  useful_application char(255),
  fk_city int,
  foreign key (fk_city) references cities (id) ON DELETE CASCADE ON UPDATE CASCADE   
);

insert into transport values (1, 'bus', 0.25, 'kogda.by', 2);
insert into transport values (2, 'trolleybus', 0.25, 'kogda.by', 2);
insert into transport values (3, 'minibus', 0.4, 'kogda.by', 2);
insert into transport values (4, 'taxi', 0.75, 'city taxi', 2);
insert into transport values (5, 'subway', 0.28, 'minsktrans', 1);
insert into transport values (6, 'bus', 0.26, 'yandexGO', 1);
insert into transport values (7, 'trolleybus', 0.26, 'yandexGO', 1);
insert into transport values (8, 'tramway', 0.26, 'yandexGO', 1);
insert into transport values (9, 'minibus', 0.7, 'yandexGO', 1);
insert into transport values (10, 'taxi', 2.6, 'yandexGO', 1);
insert into transport values (11, 'bus', 0.25, 'kogda.by', 4);
insert into transport values (12, 'trolleybus', 0.25, 'kogda.by', 4);
insert into transport values (13, 'minibus', 0.38, 'kogda.by', 4);
insert into transport values (14, 'taxi', 0.8, 'yandexGO', 4);
insert into transport values (15, 'bus', 0.25, 'kogda.by', 3);
insert into transport values (16, 'trolleybus', 0.26, 'kogda.by', 3);
insert into transport values (17, 'minibus', 0.4, 'kogda.by', 3);
insert into transport values (18, 'taxi', 0.75, 'kogda.by', 3);
insert into transport values (19, 'bus', 0.25, 'kogda.by', 5);
insert into transport values (20, 'trolleybus', 0.25, 'kogda.by', 5);
insert into transport values (21, 'minibus', 0.4, 'kogda.by', 5);
insert into transport values (22, 'taxi', 0.8, 'yandexGO', 5);
insert into transport values (23, 'bus', 0.25, 'kogda.by', 6);
insert into transport values (24, 'trolleybus', 0.25, 'kogda.by', 6);
insert into transport values (25, 'minibus', 0.4, 'kogda.by', 6);
insert into transport values (26, 'taxi', 0.8, 'yandexGO', 6);

CREATE TABLE lodging ( 
  id int4 primary key CHECK(id > 0 AND id < 113),
  type char(255),
  name char(255),
  street_name char(255),
  building_number char(255),
  price_euro real CHECK(price_euro > 0),
  fk_city int,
  foreign key (fk_city) references cities (id) ON DELETE CASCADE ON UPDATE CASCADE   
);


insert into lodging values (1, 'hostel', 'Trinity&Riverside', 'Staravilenskaja', '12', 8, 1);
insert into lodging values (2, 'hostel', 'Flatcom', 'Prytyckaha', '2', 7, 1);
insert into lodging values (3, 'hotel***', 'Hotel Monastyrski', 'Kiryly i Miafodzija', '6', 92, 1);
insert into lodging values (4, 'hotel*****', 'Renaissance Minsk Hotel', 'praspiekt Dziarzynskaha', '1', 130, 1);
insert into lodging values (5, 'hotel*****', 'Mariott', 'praspiekt Pieramozcau', '20', 122, 1);
insert into lodging values (6, 'hostel', 'BVT', 'Dubroskaja', '36', 6, 2);
insert into lodging values (7, 'hostel', 'Brest Central', 'Savieckaja', '5', 10, 2);
insert into lodging values (8, 'hotel****', 'Hermitage', 'Ckalava', '7', 75, 2);
insert into lodging values (9, 'hotel**', 'Hotel Vesta', 'Krupskaj', '16', 36, 2);
insert into lodging values (10, 'hostel', 'Dvina', 'Ilinskogo', '41', 31, 3);
insert into lodging values (11, 'hostel', 'HostelXO', 'Suvorov', '10', 5, 3);
insert into lodging values (12, 'hotel***', 'Eridan', 'Sovietskaja', '21', 50, 3);
insert into lodging values (13, 'hotel***', 'Vitebsk', 'Zamkovaya', '5', 27, 3);
insert into lodging values (14, 'hostel', 'GEO', 'Piersy zavulak Krupskaj', '1', 5, 4);
insert into lodging values (15, 'hostel', 'The Paradise Hotel', 'Pryvakzalnaja plosca', '1', 6.5, 4);
insert into lodging values (16, 'hotel****', 'Zamkovy Park Hotel', 'Haharyna', '6', 30, 4);
insert into lodging values (17, 'hotel***', 'Prestige Hotel', 'Halavackaha', '72', 25, 4);
insert into lodging values (18, 'hostel', 'Hello Hronda', 'Haradnichanskaya', '30', 7, 5);
insert into lodging values (19, 'hostel', 'Old Bridge', 'Rozanova', '34', 6, 5);
insert into lodging values (20, 'hotel***', 'Slavia', 'Maladzioznaja', '1', 40, 5);
insert into lodging values (21, 'hotel***', 'Semashko', 'Antonava', '10', 45, 5);
insert into lodging values (22, 'hotel***', 'Kronon Park Hotel', 'Urochisce Pyski', '19', 60, 5);
insert into lodging values (23, 'hotel***', 'Mogilev Hotel', 'praspiekt Mira', '6', 12, 6);
insert into lodging values (24, 'hotel***', 'Lira', 'Leninskaja', '45', 36, 6);
insert into lodging values (25, 'hotel****', 'Metropol Hotel&Spa', 'Kamsamolskayja', '6', 55, 6);

CREATE TABLE museums ( 
  id int4 primary key CHECK(id > 0 AND id < 113),
  name char(255),
  street_name char(255),
  building_number char(255),
  fk_city int,
  foreign key (fk_city) references cities (id) ON DELETE CASCADE ON UPDATE CASCADE 
);

insert into museums values (1, 'The National Art Museum', 'Lenina', '20', 1);
insert into museums values (2, 'Y Gallery', 'Kastrycnickaja', '19', 1);
insert into museums values (3, 'Cultural Center Korpus', 'praspiekt Mašerava', '9', 1);
insert into museums values (4, 'Art Belarus Gallery', 'Kazlova', '3', 1);
insert into museums values (5, 'The Azgur Museum and Studio', 'Zaira Azhura', '8', 1);
insert into museums values (6, 'The Brest Fortress', 'Hierojaŭ Abarony Bresckaj Krepasci', '60', 2);
insert into museums values (7, 'The Art Museum', 'the South barracks', '0', 2);
insert into museums values (8, 'The Archeological Museum Biarescie', 'Karla Marksa', '60', 2);
insert into museums values (9, 'The Museum of Saved Values', 'Lenina', '39', 2);
insert into museums values (10, 'The Natural History Museum', 'Karla Marksa', '60', 2);
insert into museums values (11, 'The Museum of History of the City of Brest', 'Lievanieŭskaha', '3', 2);
insert into museums values (12, 'The house of the counsel Volkovich', 'Krylova', '10', 3);
insert into museums values (13, 'The Palace of the Governors', 'Sovetskaya', '18', 3);
insert into museums values (14, 'Marc Chagall Art Center', 'Sovetskaya', '25', 3);
insert into museums values (15, 'The Vitebsk regional natural history Museum', 'Lenina', '36', 3);
insert into museums values (16, 'House-Museum of Marc Chagall', 'Pokrovskaya', '11', 3);
insert into museums values (17, 'The Art Museum', 'Tolstoy', '7', 3);
insert into museums values (18, 'Vitebsk Center of contemporary art', 'Beloborodova', '5', 3);
insert into museums values (19, 'Freespace', 'Lenina', '32', 3);
insert into museums values (20, 'Homiel Palace & Park Ensemble', 'Lenin square', '4', 4);
insert into museums values (21, 'The Museum of Military Glory', 'Puškina', '5', 4);
insert into museums values (22, 'The Museum of Criminal Science', 'Puškina', '1', 4);
insert into museums values (23, 'The Museum of History of the City of Homiel', 'Puškina', '32', 4);
insert into museums values (24, 'The Palace of Rumiancavy-Paškievičy', 'Lenina', '4', 4);
insert into museums values (25, 'Vaschenko Art Gallery', 'Karpoviča', '4', 4);
insert into museums values (26, 'Creative studio "VOZDUKH"', 'Savieckaja', '1/3 floor', 4);
insert into museums values (27, 'The gallery "Kryga" ', 'Savieckaja', '3', 5);
insert into museums values (28, 'The Museum of Smoothing Iron i', 'Savieckaja', '7', 5);
insert into museums values (29, 'The Museum of City Lifestyle', 'Liermantava', '25', 5);
insert into museums values (30, 'The State Museum of Religion history', 'Zamkavaja', '16', 5);
insert into museums values (31, 'DOM46', 'Lieliavielia', '46', 5);
insert into museums values (32, 'Tretij sector center', 'Budzionnaha ', '48a', 5);
insert into museums values (33, 'The Mahilioŭ History Museum', 'Leninskaja', '1A', 6);
insert into museums values (34, 'The Local Lore Museum', 'płošča Slavy', '1', 6);
insert into museums values (35, 'The Museum of Ethnography', 'Pieršamajskaja', '8', 6);
insert into museums values (36, 'The art museums of Białynicki-Birula and Maslenikaŭ', 'Mironava', '33', 6);

CREATE TABLE fast_food_snack_bars ( 
  id int4 primary key CHECK(id > 0 AND id < 113),
  name char(255),
  street_name char(255),
  building_number char(255),
  the_best_dish char(255),
  fk_city int,
  foreign key (fk_city) references cities (id)ON DELETE CASCADE ON UPDATE CASCADE  
);

insert into fast_food_snack_bars values (1, 'Miraž', 'Kulman', '5b', 'kebab', 1);
insert into fast_food_snack_bars values (2, 'El Burito', 'Kulman', '5b', 'kebab', 1);
insert into fast_food_snack_bars values (3, 'Plov #1', 'Kulman', '5b', 'pilaf', 1);
insert into fast_food_snack_bars values (4, 'U Zizu', 'Kulman', '5b', 'falafel', 1);
insert into fast_food_snack_bars values (5, 'Saigon-Viet', 'Kulman', '5b', 'kebab', 1);
insert into fast_food_snack_bars values (6, 'Pesochnica', 'Kujbyšava', '45', 'all from waffles to burgers', 1);
insert into fast_food_snack_bars values (7, 'DEPO', 'Kastryčnickaja', '23', 'crepes', 1);
insert into fast_food_snack_bars values (8, 'Laŭka', 'Kastryčnickaja', '23', 'salmon sandwich', 1);
insert into fast_food_snack_bars values (9, 'Monkey Food', 'Kastryčnickaja', '16', 'vegan dishes', 1);
insert into fast_food_snack_bars values (10, 'BurgerLab', 'Kastryčnickaja', '19/4', 'burgers', 1);
insert into fast_food_snack_bars values (11, 'Cimes', 'Karla Marksa', '17', 'shakshuka, baba ghanoush', 1);
insert into fast_food_snack_bars values (12, 'Om Namo', 'Viery Charužaj', '13', 'pakora, samosa, tali', 1);
insert into fast_food_snack_bars values (13, 'Sushi Chef Arts', 'Sviardłova', '32', 'rolls', 1);
insert into fast_food_snack_bars values (14, 'Lido', 'Niezaležnasci', '49/1', 'home-made dishes', 1);
insert into fast_food_snack_bars values (15, 'Draniki Viaskovyja', 'Kazlova', '2', 'draniki', 1);
insert into fast_food_snack_bars values (16, 'Freedom', 'Savieckaja', '48', 'cheeseburger with draniks', 2);
insert into fast_food_snack_bars values (17, 'Pit Stop', 'Maskoŭskaja', '210', 'home-made meals', 2);
insert into fast_food_snack_bars values (18, 'Al taglio', 'Savieckaja', '55', 'pizza slices', 2);
insert into fast_food_snack_bars values (19, 'Burger club', 'Puškinskaya', '20', 'traditional burgers', 2);
insert into fast_food_snack_bars values (20, 'Domino Pizzeria', 'Suvorova', '7/8', 'pizza', 3);
insert into fast_food_snack_bars values (21, 'Bisquit cafe', 'Suvorov', '5/5', 'bisquit', 3);
insert into fast_food_snack_bars values (22, 'Kukuha', 'Krylova', '3', 'hot chocolate', 3);
insert into fast_food_snack_bars values (23, 'Pelmennaya', 'Kupaly', '12/5', 'dumplings', 3);
insert into fast_food_snack_bars values (24, 'Pontchiki', 'Lenin', '23-2', 'pastries', 3);
insert into fast_food_snack_bars values (25, 'Hutka Smachna ', 'Chernyakhovsky av', '26', 'belyashi', 3);
insert into fast_food_snack_bars values (26, 'Zhuravinka restaurant', 'Moskovskij av', '7', 'shawarma', 3);
insert into fast_food_snack_bars values (27, 'Burger Lux and Burger Master', 'Pryvakzalnaja', '1', 'burger and fries', 4);
insert into fast_food_snack_bars values (28, 'Ferma', 'praspiekt Lenina', '10', 'all', 4);
insert into fast_food_snack_bars values (29, '24/7', 'Savieckaja', '12', 'Arizona or Chicago Bulls', 4);
insert into fast_food_snack_bars values (30, 'Exupery Crepe House', 'Savieckaja', '12', 'pancakes', 4);
insert into fast_food_snack_bars values (31, 'Bubbles', 'Savieckaja', '44', 'ice-cream', 4);
insert into fast_food_snack_bars values (32, 'Ponchi', 'praspiekt Pieramohi', '4', 'donut, pie', 4);
insert into fast_food_snack_bars values (33, 'Mini-cafe Hot Dog', 'Kamsomolskaja', '3', 'sausage', 4);
insert into fast_food_snack_bars values (34, 'Kolobki', 'Elizy Ažeška', '16', 'pancakes', 5);
insert into fast_food_snack_bars values (35, 'Starlight', 'Zamkavaja', '11', 'sandwiches', 5);
insert into fast_food_snack_bars values (36, 'Cafe U staroha mlyna', 'Cimirazieva', '25', 'chebureks', 5);
insert into fast_food_snack_bars values (37, 'Batoryja', 'Batoryja', '10', 'Piroshki and belyashy', 5);
insert into fast_food_snack_bars values (38, 'Cafe Zalatoj Kluchik', 'Lenina', '3', 'pancakes', 6);
insert into fast_food_snack_bars values (39, 'Fiesta Cafe', 'Lenina', '6', 'draniki', 6);
insert into fast_food_snack_bars values (40, 'cafe Pan-Bulban', 'Lenina', '1', 'baked potato', 6);
insert into fast_food_snack_bars values (41, 'Shaurma King', 'Mironava', '4', 'kebab', 6);
insert into fast_food_snack_bars values (42, 'Upletajka', 'Lepešinskaha', '14', 'kebab', 6);
insert into fast_food_snack_bars values (43, 'Burger House', 'Leninskaja', '45', 'burgers', 6);
insert into fast_food_snack_bars values (44, 'Smaženka Café', 'Pieršamajskaja', '17', 'weird mini-pizzas', 6);
insert into fast_food_snack_bars values (45, 'Madlen', 'Lenina', '36', 'ciabatta, fragrant baguette', 6);

CREATE TABLE shopping( 
  id int4 primary key CHECK(id > 0 AND id < 113),
  name char(255),
  street_name char(255),
  building_number char(255),
  what_to_buy char(255),
  fk_city int,
  foreign key (fk_city) references cities (id) ON DELETE CASCADE ON UPDATE CASCADE    
);

insert into shopping values (1, 'GUM', 'praspiekt Niezaležnasci', '21', 'everything', 1);
insert into shopping values (2, 'TSUM Minsk', 'praspiekt Niezaležnasci', '54', 'everything', 1);
insert into shopping values (3, 'Kamaroŭsky Market', 'Viery Charužaj', '8', 'food', 1);
insert into shopping values (4, 'KaliLaska', 'praspiekt Mašerava', '9/8', ' books, furniture, clothes, shoes, jewelry, bags, vinyl, souvenirs', 1);
insert into shopping values (5, 'Vedy', 'Karla Marksa', '36', 'second-hand books', 1);
insert into shopping values (6, 'Son Gogolya', 'Lenina', '15', 'fresh books and coffee', 1);
insert into shopping values (7, 'Symbal.by', 'praspiekt Mašerava', '18', 'products with Belarusian national symbols', 1);
insert into shopping values (8, 'Vialikі dziakuj', 'Kastryčnickaja', '23a', 'gifts', 1);
insert into shopping values (9, 'Clans', 'Kazlova', '8', 'brand sneakers and streetwear', 1);
insert into shopping values (10, 'Shopping center Metropol', 'Niamiha', '5', 'local designer goods', 1);
insert into shopping values (11, 'Showroom18', 'Rakauskaja', '18', 'local designer goods', 1);
insert into shopping values (12, 'Korpus', 'praspiekt Mašerava', '9/8', 'local designer goods', 1);
insert into shopping values (13, 'Galileo Shopping Mall', 'Babrujskaja', '6', 'everything', 1);
insert into shopping values (14, 'Dana Mall', 'Piatra Mscisłaŭca', '11', 'mass-market', 1);
insert into shopping values (15, 'Green City', 'Prytyckaha', '156', 'mass-market', 1);
insert into shopping values (16, 'Galleria Minsk', 'praspiekt Pieramožcaŭ', '9', 'mass-market', 1);
insert into shopping values (17, 'Zamak Shopping Mall', 'praspiekt Pieramožcaŭ', '65', 'starting with mass-produced items all the way to premium brands', 1);
insert into shopping values (18, 'Lakbi', 'Savieckaja', '70/1', 'local designer goods', 2);
insert into shopping values (19, 'PUFF Shop', 'Savieckaja', '80', 'street fashion', 2);
insert into shopping values (20, 'Berestejsky', 'Majakoŭskaha', '26', 'socks', 2);
insert into shopping values (21, 'Pekoe.by', 'Suvorova', '6', 'speciality & gifts ', 3);
insert into shopping values (22, 'Antique Store Raritet', 'Kirova', '10', 'antiques', 3);
insert into shopping values (23, 'Trading house Neman', 'Savieckaja', '18', 'everything', 5);
insert into shopping values (24, 'OldCity', 'Dubko', '17', 'everything', 5);
insert into shopping values (25, 'Palace of textile workers', 'Savieckaja square', '6', 'antiques', 5);
insert into shopping values (26, 'Akcent', 'Mastavaja', '33', 'local designer goods', 5);
insert into shopping values (27, 'Ethno-shop Cudounia', 'Vialikaja Trajeckaja', '15', 'tourist stuff', 5);
insert into shopping values (28, 'Kubik', 'Vialikaja Trajeckaja', '15', 'table games', 5);
insert into shopping values (29, 'Liolia', 'Vialikaja Trajeckaja', '7', 'handicrafts', 5);
insert into shopping values (30, 'Tkallya', 'Zamkavaja', '15', 'embroiderys', 5);
insert into shopping values (31, 'Central Department Store', 'Pieršamajskaja', '61', 'everything', 6);
insert into shopping values (32, 'Ščyraja majsternia Art Shop', 'Leninskaja', '29', 'works by local artists', 6);
insert into shopping values (33, 'Magnit', 'Pieršamajskaja', '34A', 'clothes, shoes, etc.', 6);
insert into shopping values (34, 'Panorama', 'Krylenki', '10', 'clothes, shoes, etc.', 6);
insert into shopping values (35, 'PerekryostOK', 'Kasmanaŭtaŭ', '2', 'food', 6);
insert into shopping values (36, 'Park-City', 'Haharyna', '79', 'everything', 6);
insert into shopping values (37, 'Planieta Green', 'Astroŭskaha', '5', 'everything', 6);

CREATE TABLE cafes_restaurants ( 
  id int4 primary key CHECK(id > 0 AND id < 113),
  name char(255),
  street_name char(255),
  building_number char(255),
  dishes_to_try char(255),
  fk_city int,
  foreign key (fk_city) references cities (id)ON DELETE CASCADE ON UPDATE CASCADE 
);

insert into cafes_restaurants values (1, 'Enzo', 'Kastryčnickaja', '23', 'Enzo Burger, Texas Burger, steaks', 1);
insert into cafes_restaurants values (2, 'Tapas Bar', 'Internacyjanalnaja', '9', 'sangria, tapas', 1);
insert into cafes_restaurants values (3, 'Pinky Bandinsky', 'Kamsamolskaja', '13a', 'dinner', 1);
insert into cafes_restaurants values (4, 'Feelini', 'Internacyjanalnaja', '36', 'dinner', 1);
insert into cafes_restaurants values (5, 'Simple', 'Sviardlova', '2', 'modern Belarusian cuisine', 1);
insert into cafes_restaurants values (6, 'News Cafe', 'Karla Marksa', '34', 'breakfast, business lunch', 1);
insert into cafes_restaurants values (7, 'Bessonnica (Insomnia)', 'Hiercena', '1', 'pasta and tartar, cocktails', 1);
insert into cafes_restaurants values (8, 'ID Bar', 'Zacharava', '19', 'Tinctures and bitters, lunch', 1);
insert into cafes_restaurants values (9, 'Underdog', 'Kastryčnickaja', '23a', 'pizza, sparkling wine, beer', 1);
insert into cafes_restaurants values (10, 'Mai Thai', 'Kirava', '11', 'Tom Yam, Pad Ty', 1);
insert into cafes_restaurants values (11, 'La Scala', 'Niamiha', '36', 'pizza', 1);
insert into cafes_restaurants values (12, 'Kamianica', 'Pieršamajskaja', '18', 'Khrenovukha, Žuravina, and house-made mead', 1);
insert into cafes_restaurants values (13, 'Gray', 'Internacyjanalnaja', '33', 'modern belarusian cuisine and drinks', 1);
insert into cafes_restaurants values (14, 'Vasilki', 'praspiekt Niezaležnasci', '16', 'draniki, kolduny, pancakes, shank, “Olivier” salad, “dressed” herring', 1);
insert into cafes_restaurants values (15, 'Pelmeni House Gurman', 'Kamunistyčnaja', '7', 'pelmeni, draniki, mushroom soup', 1);
insert into cafes_restaurants values (16, 'Pena Dnej', 'Kamsamolskaja', '12', 'wine, tartare', 1);
insert into cafes_restaurants values (17, 'Seafood bar', 'Revalucyjnaja', '17', 'oysters and seafood', 1);
insert into cafes_restaurants values (18, 'Hinkalnya', 'Internacyjanalnaja', '25', 'Adjarian khachapuri, kubdari, kebab, kharcho, homemade wine', 1);
insert into cafes_restaurants values (19, 'Paragraph', 'Saveckaja', '66', 'coffee, pastry, cakes, cupcakes', 2);
insert into cafes_restaurants values (20, 'café Sonet', 'Savieckaja', '110', 'cocoa with marshmallows, baked pudding, apple pie', 2);
insert into cafes_restaurants values (21, 'K’lab Coffee', 'Mašerava', '54', 'fresh-roasted coffee', 2);
insert into cafes_restaurants values (22, 'Progresso', 'Puškinskaja', '21', 'breakfast', 2);
insert into cafes_restaurants values (23, 'Times Café', 'Savieckaja', '30', 'soup with three kinds of fish, grilled tongue with potatoes', 2);
insert into cafes_restaurants values (24, 'Svayaki', 'Puškinskaja', '5', 'draniki', 2);
insert into cafes_restaurants values (25, 'Klyukva', 'Dzyaržynskaha', '52', 'pod shuboy, draniki in a pan', 2);
insert into cafes_restaurants values (26, 'café Venezia', 'Internacyjanalnaja', '5', 'pizza, risotto, ravioli, lasagne, pasta', 2);
insert into cafes_restaurants values (27, 'Vasilky', 'Moskovskij av.', '9-1', 'home-made dishes', 3);
insert into cafes_restaurants values (28, 'Zhuravinka', 'Moskovskij av.', '7', 'home-made dishes', 3);
insert into cafes_restaurants values (29, 'Ugol 90', 'Moskovskij av.', '7', 'pizza', 3);
insert into cafes_restaurants values (30, 'Café Tiflis', 'Chapayev', '7', 'Georgian dishes', 3);
insert into cafes_restaurants values (31, 'Eilat', 'Suvorova', '16/3', 'Jewish and Middle East cuisines', 3);
insert into cafes_restaurants values (32, 'Golden Dragon restaurant', 'Krylova', '10', 'sushi', 3);
insert into cafes_restaurants values (33, 'Liamus', 'Pobedy av', '1', 'beer, draniki', 3);
insert into cafes_restaurants values (34, 'Brevis', 'Gogol', '11', 'European cuisine', 3);
insert into cafes_restaurants values (35, 'Provans Restaurant', 'Bilecki spusk', '1', 'tart with pear and tiramisu, filet mignon and Provans salads', 4);
insert into cafes_restaurants values (36, 'Befana', 'Lenina praspiekt', '20', 'Italian restaurant, seafood', 4);
insert into cafes_restaurants values (37, 'Pierot', 'Puškina', '14', 'homemade apple strudel, profiteroles with ice cream', 4);
insert into cafes_restaurants values (38, 'FaSol', 'Savieckaja', '36', 'syrniki', 4);
insert into cafes_restaurants values (39, 'DOM', 'Lenina praspiekt', '34', 'cereal, pancakes, scrambled eggs', 4);
insert into cafes_restaurants values (40, 'Trattoria Markoni', 'Pieramohi praspiekt', '4', 'pizzas, pasta', 4);
insert into cafes_restaurants values (41, 'Pizzeria Italia', 'Puškina', '4', 'lasagna, pasta al dente, grilled meat', 4);
insert into cafes_restaurants values (42, 'Karčma Budzma', 'Pryvakzalnaja', '3a', 'miedovukha, khrenovukha and spotykach, draniki', 4);
insert into cafes_restaurants values (43, 'Grill House', 'Kirava', '35', 'salads, soups, grilled meat', 4);
insert into cafes_restaurants values (44, 'Resto-bar Kelly’s', 'Savieckaja', '29a', 'quesadilla, burrito, fajitas', 4);
insert into cafes_restaurants values (45, 'Taste', 'Rahačoŭskaja', '4', 'risotto with oyster mushrooms and truffle sauce, foie gras, sangria', 4);
insert into cafes_restaurants values (46, 'Naša Kava', 'Zamkavaja', '11', '"kava pa-paŭstancku" ("Rebel coffee")', 5);
insert into cafes_restaurants values (47, 'Raskosha', 'Savieckaja', '7', 'creme-soups, Raskosha', 5);
insert into cafes_restaurants values (48, 'Bolshoj Bufet', 'Savietsckaja', '18', 'Chinese noodles, Belarusiano', 5);
insert into cafes_restaurants values (49, 'Gastro-bar Werden', 'Mastavaja', '31', 'craft beer, soups, hot meals', 5);
insert into cafes_restaurants values (50, 'Honey Kabaney', 'buĺvar Lieninskaha Kamsamolu', '50', 'Marble beef', 5);
insert into cafes_restaurants values (51, 'Bakst', 'Zamkovaja', '21', 'molecular cuisine', 5);
insert into cafes_restaurants values (52, 'Karčma lia pryčala', 'Zavodskaya', '14', 'home-made dishes', 5);
insert into cafes_restaurants values (53, 'Buffet Café', 'Kamsamolskaja', '5', ' curd cakes, pancakes, vareniki, dumplings', 6);
insert into cafes_restaurants values (54, 'Burger-pizza', 'Kamsamolskaja', '5', 'pizza, burgers, various salads', 6);
insert into cafes_restaurants values (55, 'Bellagio Restaurant', 'Leninskaja', '21', 'dinner', 6);
insert into cafes_restaurants values (56, '101 Restaurant', 'Pažarny zavułak', '4', 'beer, pizza', 6);
insert into cafes_restaurants values (57, 'Parmezan', 'Pieršamajskaja', '34/1', 'pizza', 6);
insert into cafes_restaurants values (58, 'Ale House', 'Leninskaja', '61', 'European beer and appetizers', 6);
insert into cafes_restaurants values (59, 'Bakehouse Café', 'Pieršamajskaja', '12', 'coffee, dessert', 6);

CREATE USER worker WITH PASSWORD 'privet';
CREATE USER adviser WITH PASSWORD 'qwerty';
CREATE USER user1 WITH PASSWORD '1234';

GRANT SELECT ON TABLE 
additional_information, 
cafes_restaurants, 
fast_food_snack_bars,
lodging,
museums, 
shopping,
transport
TO adviser, user1;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE cities TO adviser;

GRANT ALL PRIVILEGES ON DATABASE "Individual_work" TO worker;

DROP TABLE IF EXISTS cities_audit;

CREATE TABLE cities_audit(
	op char(1) NOT NULL,
	user_changed text NOT NULL,
	time_stamp timestamp NOT NULL, 
	
	id int4 primary key CHECK(id > 0 AND id < 113),
 	name char(255),
	location char(255)
);

CREATE OR REPLACE FUNCTION build_audit_cities() RETURNS trigger AS $$
BEGIN
	IF TG_OP = 'INSERT' THEN
		INSERT INTO cities_audit
		SELECT 'I', session_user, now(), nt.* FROM new_table nt;
	ELSEIF TG_OP = 'UPDATE' THEN
		INSERT INTO cities_audit
		SELECT 'U', session_user, now(), nt.* FROM new_table nt;
	ELSEIF TG_OP = 'DELETE' THEN
		INSERT INTO cities_audit
		SELECT 'D', session_user, now(), ot.* FROM old_table ot;
	END IF;
	RETURN NULL;
END
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS audit_cities_insert ON cities;
CREATE TRIGGER audit_cities_insert AFTER INSERT ON cities
REFERENCING NEW TABLE AS new_table
FOR EACH STATEMENT EXECUTE PROCEDURE build_audit_cities();

DROP TRIGGER IF EXISTS audit_cities_update ON cities;
CREATE TRIGGER audit_cities_update AFTER UPDATE ON cities
REFERENCING NEW TABLE AS new_table
FOR EACH STATEMENT EXECUTE PROCEDURE build_audit_cities();

DROP TRIGGER IF EXISTS audit_cities_delete ON cities;
CREATE TRIGGER audit_cities_delete AFTER DELETE ON cities
REFERENCING OLD TABLE AS old_table
FOR EACH STATEMENT EXECUTE PROCEDURE build_audit_cities();

CREATE INDEX idx ON additional_information(fk_id);
CREATE INDEX idx_cafes ON cafes_restaurants(id);
CREATE INDEX idx_cities ON cities (id);
CREATE INDEX idx_shopping ON shopping(id);
CREATE INDEX idx_transport ON transport (id);

CREATE INDEX idx_fast_food ON fast_food(id);
CREATE INDEX idx_lodging ON lodging(id);
CREATE INDEX idx_museums ON museums(id);

