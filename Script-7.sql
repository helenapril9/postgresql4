INSERT into artist (artist_name)
values ('Kevin Morby'),('Carla`s Dreams'),('Jack Harlow'),('Tyga'),('Charli Puth'),('Eric Nam'),('Mist'),('Imany'),('Nxn')

insert into jenre(jenre_name)
values ('Инди рок'),('R&B'),('Хип-хоп'),('K-pop'),('Metal'),('Soul')

insert into artist_jenre(jenre_id,artist_id)
values (1,1),(2,2),(3,3),(3,4),(2,5),(2,6),(4,6),(5,7),(6,8),(6,9)

insert into album (album_name,album_year)
values ('This Is A Photograph', 2022), ('Harlem River', 2019),
('Dimond of Dirt',2018),('MIS to the T',2016),
('The wrong kind of war',2016),('The shape of a broken heart',2018),
('Sub Pielea Mea',2016),('NGOC',2016)

insert into track (track_name,diration,album_id, artist_id)
values ('Intro',0.32, 1, 1), ('A random act of kindness',4.14,1,1),('Disappearing',3.28,1,1),
('Harlem river',9.16,2,1),('Slow train',5.51,2,1),
('Save our soul',4.54,5,8),('Nothing to save',3.18,5), ('Slow down',4.13,6,8), 
('Grey monday',3.13,6,8),('Seat with me',4.28,6,8),('Pray to help',3.12,6,8),
('Sub Pielea Mea',4.08,7,2),('Aripile',3.32,8,2), ('Dragidtea',4.15,8,2),('Suna ma',3.39,8,2),('Rachete',4.15,8,2),('Zarplara',3.26,8,2)

insert into album_artist (album_id,artist_id) values (1,1),(2,1),(3,7),(4,7),(5,8),(6,8),(7,2),(8,2),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8);

insert into collection (collection_name, collection_year) values
('Soul','2019'),('Музыка в стиле R&B','2021'),('Музыка в стиле хип-хоп','2022'),('Сборник зарубежной музыки','2020'),
('Танцевальные хиты','2021'),('Музыкальные хиты','2022'),('Music non stop','2020'),('Dance music','2022')

insert into collection_track (track_id, collection_id)
values (5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(1,2),(2,2),(1,3),(2,3),(17,3),(11,4),(12,4),(1,5),(2,5),(8,5),(12,6),(13,6),(14,6),
(3,7),(4,7),(5,7),(8,7),(3,8),(1,8),(16,8),(17,8);

