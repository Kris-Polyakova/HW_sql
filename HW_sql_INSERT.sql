INSERT INTO genre(name)
VALUES
     ('фолк-рок'),
     ('альтернатива'),
     ('хард-рок'),
     ('прогрессивный рок');
     
INSERT INTO music_artist(name)
VALUES
     ('Blackmore''s Night'),
     ('R.E.M.'),
     ('The White Stripes'),
     ('Deep Purple'),
     ('King Crimson'),
     ('Eivør');
 
INSERT INTO musicartist_genre(genre_id, music_artist_id)
VALUES
     (1, 1),
     (2, 2),
     (2, 3),
     (3, 4),
     (4, 5),
     (1, 6);  

INSERT INTO album(name, year)
VALUES
     ('Shadow of the Moon', 1997),
     ('Losing My Religion', 1991),
     ('Automatic for the People.', 1992),
     ('Elephant', 2003),
     ('Deep Purple in Rock ', 1970),
     ('Fireball ', 1971),
     ('In the Court of the Crimson King', 1976),
     ('Slør. English Version', 2019);
    
INSERT INTO music_artist_album(album_id, music_artist_id)
VALUES
     (1, 1),
     (2, 2),
     (3, 2),
     (4, 3),
     (5, 4),
     (6, 4),
     (7, 5),
     (8, 6);
    
INSERT INTO track(name, time, album_id)
VALUES
     ('Losing My Religion', 256, 2),
     ('Wish You Were Here', 306, 1),
     ('Everybody Hurts', 310, 3),
     ('Seven Nation Army', 210, 4),
     ('Child In Time ', 610, 5),
     ('Demon''s Eye ', 313, 6),
     ('Epitaph', 445, 7),
     ('In My Shoes', 148, 8),
     ('Verð mín', 310, 8);
    
INSERT INTO collection(name, year)
VALUES
     ('In Time: The Best Of R.E.M. 1988-2003', 2016),
     ('PAY CLOSE ATTENTION: XL Recordings', 2014),
     ('30: Very Best Of', 1998),
     ('Live in Vienna (1 December 2016)', 2018),
     ('Live in Tórshavn', 2019);
    
INSERT INTO track_collection(track_id, collection_id)
VALUES
     (2, 1),
     (3, 1),
     (4, 2),
     (5, 3),
     (6, 3),
     (7, 4),
     (8, 5); 

    

    
    