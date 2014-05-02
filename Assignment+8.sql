INSERT INTO UserAccount (fullname)
VALUES ('boris jurosevic',value2,value3,...);

INSERT INTO SecurityQuestion (question)
VALUES ('in what city were you born ?',value2,value3,...);
INSERT INTO PhoneNumber (phoneNumber)
VALUES ('111-111-1111');
INSERT INTO Movie (title)
VALUES ('rocky');

INSERT INTO MovieItem (formatType,)
VALUES ('horror');
INSERT INTO Request (item_ID)
VALUES (12);
INSERT INTO Rental (rentalDate)
VALUES (03-12-2014);

INSERT INTO Genre (genreName,)
VALUES ('horror');
INSERT INTO MovieGenre (movie_ID)
VALUES (12);
INSERT INTO Director (fullName)
VALUES ('some name');

INSERT INTO MovieDirector (director_ID,)
VALUES (123);
INSERT INTO Actor (fullName)
VALUES ('some name');
INSERT INTO MovieActor (actor_ID)
VALUES (12);

INSERT INTO Customers (customer_ID,fullname)
VALUES (10,'gregg johnson');
INSERT INTO Customers (customer_ID,fullname)
VALUES (11,'tom johnson');
INSERT INTO Customers (customer_ID,fullname)
VALUES (12,'larry johnson');

INSERT INTO Adin (admin_ID,fullname)
VALUES (14,'larry johnson');


select * from Customers;

INSERT INTO Movie (title)
VALUES ('Gravity');



INSERT INTO GENRE (Genre_ID, genreName) VALUES
           (1234,'horror')
SELECT  t1.Genre_ID
,       t2.title
FROM    Genre t1
CROSS JOIN 
        Movie t2
WHERE   t1.Genre_ID = 123
        and t2.Movie_ID = 124;


		
INSERT INTO DIRECTOR (director_ID, fullName) VALUES
           (1234,'some name')
SELECT  t1.director_ID
,       t2.title
FROM    Director t1
CROSS JOIN 
        Movie t2
WHERE   t1.director_ID = 123
        and t2.Movie_ID = 124;

INSERT INTO ACTOR (actor_ID, fullName) VALUES
           (1234,'some name')
SELECT  t1.actor_ID
,       t2.title
FROM    Actor t1
CROSS JOIN 
        Movie t2
WHERE   t1.actor_ID = 123
        and t2.Movie_ID = 124;



select title from Movie WHERE title='Gravity';



CREATE TRIGGER tr_Movie_INSERT
 ON Movie 
 FOR 
 INSERT 
 AS IF (SELECT COUNT(*) FROM inserted WHERE title = 'Gravity') = 1 
 BEGIN PRINT 'Rent Movie Goes Here' 
 END 
 go 
 INSERT Movie (title) VALUES ('Gravity') 


 SELECT title
FROM MOVIE
WHERE title LIKE '%Gravity%';