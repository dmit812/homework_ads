INSERT INTO genreofmusic(name)
VALUES
('Rock music'),
('Heavy metal music'),
('Pop music'),
('Rap music'),
('Classical music');

INSERT INTO listofperformers(name)
VALUES
('Валерий Кипелов'),
('Король и шут'),
('Metallica'),
('Руки вверх'),
('Вольфганг Амадей Моцарт');

INSERT INTO listofperformers(name, nickname)
VALUES
('Laurie Blue Adkins', 'Adele'),
('Marshall Bruce Mathers', 'Eminem'),
('Shawn Corey Carter', 'Jay-Z');

INSERT INTO performersgenre(genre_id, performers_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 4),
(3, 6),
(4, 7),
(4, 8),
(5, 5);

INSERT INTO artistsalbums(name, release_year)
VALUES
('Смутное время', '1997-09-10'),
('Ели мясо мужики', '1999-12-01'),
('Master of Puppets', '1986-03-03'),
('…And Justice for All', '1988-09-07'),
('Сделай погромче!', '1998-06-19'),
('Symphony No. 39 & 40', '1788-06-25'),
('19', '2008-01-25'),
('Encore', '2004-11-12'),
('Watch The Throne', '2011-08-08');

INSERT INTO albumtracklist(albums_id, name, duration)
VALUES
(1, 'Я свободен!', 7.26),
(1, 'Вот и все дела!', 6.05),
(1, 'Смутное время', 6.44),
(1, 'Castlevania', 6.06),
(2, 'Ели мясо мужики', 2.14),
(2, 'Лесник', 3.13),
(2, 'Охотник', 2.43),
(3, 'Master of Puppets', 8.35),
(4, '…And Justice for All', 9.46),
(4, 'One Remastered', 7.26),
(5, 'Чужие губы', 4.02),
(5, 'Я тебя украду', 4.39),
(5, 'Джимми', 4.44),
(6, 'Symphony No. 40 in G Minor, K. 550: I. Molto Allegro', 8.08),
(7, 'Melt My Heart To Stone', 3.23),
(7, 'First Love', 3.10),
(7, 'Make You Feel My Love', 3.32),
(8, 'Rain man', 5.13),
(8, 'Puke', 4.07),
(8, 'Spend Some Time', 5.10),
(9, 'Otis', 2.58),
(9, 'New Day', 4.32),
(9, 'Thats My Bitch', 3.22);

INSERT INTO albumsartist(performers_id, albums_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9);

INSERT INTO collectionalbum(name, release_year)
VALUES
('Русский рок', '2018-11-01'),
('Рок со всего мира', '2022-11-02'),
('Попса', '2019-11-03'),
('Рэп сборник', '2022-11-04'),
('Музыка в дорогу', '2022-10-31'),
('Хиты 90-х', '2020-10-30'),
('Хиты 2000-х', '2022-10-29'),
('Авторадио vol.99', '2022-10-28');

INSERT INTO collectiontrack(tracklist_id, collection_id)
VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 3),
(11, 3),
(12, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(1, 5),
(9, 5),
(10, 5),
(11, 5),
(13, 5),
(15, 5),
(16, 5),
(18, 5),
(21, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(14, 7),
(15, 7),
(16, 7),
(17, 7),
(18, 7),
(19, 7),
(20, 7),
(21, 7),
(22, 7),
(1, 8),
(6, 8),
(8, 8),
(10, 8),
(11, 8),
(12, 8),
(13, 8),
(15, 8),
(17, 8),
(20, 8);




