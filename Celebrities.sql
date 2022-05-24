/* Create table about the people and what they do here */
CREATE TABLE celebrities (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER, birthplace TEXT);

INSERT INTO celebrities (name, age, birthplace) VALUES ("Matthew McConaughey", 52, "TX");
INSERT INTO celebrities (name, age, birthplace) VALUES ("Dolly Parton", 76, "TN");
INSERT INTO celebrities (name, age, birthplace) VALUES ("Viola Davis", 56, "SC");
INSERT INTO celebrities (name, age, birthplace) VALUES ("Beyonce Knowles", 40, "TX");
INSERT INTO celebrities (name, age, birthplace) VALUES ("Jeff Koons", 67, "PA");
INSERT INTO celebrities (name, age, birthplace) VALUES ("Tom Ford", 60, "TX");
INSERT INTO celebrities (name, age, birthplace) VALUES ("Tyra Banks", 48, "CA");
INSERT INTO celebrities (name, age, birthplace) VALUES ("Margaret Cho", 53, "CA");
INSERT INTO celebrities (name, age, birthplace) VALUES ("Terry Crews", 53, "MI");
INSERT INTO celebrities (name, age, birthplace) VALUES ("Danny DeVito", 77, "NJ");
INSERT INTO celebrities (name, age, birthplace) VALUES ("Jimmy Carter", 97, "GA");
INSERT INTO celebrities (name, age, birthplace) VALUES ("Shaquille O'Neal", 50, "NJ");
INSERT INTO celebrities (name, age, birthplace) VALUES ("Lady Gaga", 36, "NY");
INSERT INTO celebrities (name, age, birthplace) VALUES ("Sandra Bullock", 57, "VA");
INSERT INTO celebrities (name, age, birthplace) VALUES ("Rachael Ray", 53, "NY");

CREATE TABLE career (celeb_id TEXT, profession TEXT, net_worth_millions INTEGER);

INSERT INTO career (celeb_id, profession, net_worth_millions) VALUES (1, "actor", 160);
INSERT INTO career (celeb_id, profession, net_worth_millions) VALUES (2, "singer", 350);
INSERT INTO career (celeb_id, profession, net_worth_millions) VALUES (3, "actress", 25);
INSERT INTO career (celeb_id, profession, net_worth_millions) VALUES (4, "singer", 500);
INSERT INTO career (celeb_id, profession, net_worth_millions) VALUES (5, "painter", 400);
INSERT INTO career (celeb_id, profession, net_worth_millions) VALUES (6, "designer", 500);
INSERT INTO career (celeb_id, profession, net_worth_millions) VALUES (7, "model", 90);
INSERT INTO career (celeb_id, profession, net_worth_millions) VALUES (8, "comedian", 4);
INSERT INTO career (celeb_id, profession, net_worth_millions) VALUES (9, "actor", 25);
INSERT INTO career (celeb_id, profession, net_worth_millions) VALUES (10, "actor", 80);
INSERT INTO career (celeb_id, profession, net_worth_millions) VALUES (11, "politician", 60);
INSERT INTO career (celeb_id, profession, net_worth_millions) VALUES (12, "athlete", 400);
INSERT INTO career (celeb_id, profession, net_worth_millions) VALUES (13, "singer", 150);
INSERT INTO career (celeb_id, profession, net_worth_millions) VALUES (14, "actress", 250);
INSERT INTO career (celeb_id, profession, net_worth_millions) VALUES (15, "chef", 100);

/* Display the celebrity's name next to their profession. */
SELECT celebrities.name, career.profession FROM celebrities
    JOIN career
    ON celebrities.id = career.celeb_id;
    
/* List the celebrities with their net worth, in descending order. */
SELECT celebrities.name, career.net_worth_millions AS "net worth in millions" 
    FROM celebrities
    JOIN career
    ON celebrities.id = career.celeb_id
    ORDER BY net_worth_millions DESC;
    
/* Which state had celebrities with the highest total net worth in this data set? Generate a table that groups the total net worth of these celebrities by state, in descending order. */
SELECT celebrities.birthplace, career.net_worth_millions AS "total net worth by state"
    FROM celebrities
    JOIN career
    ON celebrities.id = career.celeb_id
    GROUP BY celebrities.birthplace
    ORDER BY "total net worth by state" DESC;
--TX had the highest combined net worth from the celebrities in this data set.