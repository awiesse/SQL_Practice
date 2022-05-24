/* Create a table for an app that stores information about states and territories for National Geographic Kids. */
CREATE TABLE states (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, capital TEXT, state_flower TEXT, annexation_order INTEGER);

INSERT INTO states (name, capital, state_flower, annexation_order) VALUES ("Texas", "Austin", "Bluebonnet", 28);
INSERT INTO states (name, capital, state_flower, annexation_order) VALUES ("California", "Sacramento", "California Poppy", 31);
INSERT INTO states (name, capital, state_flower, annexation_order) VALUES ("New York", "Albany", "Camellia", 11);
INSERT INTO states (name, capital, state_flower, annexation_order) VALUES ("Colorado", "Denver", "Rocky Mountain Columbine", 38);
INSERT INTO states (name, capital, state_flower, annexation_order) VALUES ("Florida", "Tallahassee", "Orange Blossom", 27);

/* We find out that they NY state flower is actually a rose, rather than a camellia. Update the row to correct this error. Issue a SELECT query to make sure the change is reflected in the new table. */
UPDATE states SET state_flower = "Rose" 
	WHERE name = "New York";

SELECT * FROM states;
/*Delete Florida from our table using a DELETE. Issue a SELECT query to make sure the change is reflected in the new table.*/
DELETE FROM states 
	WHERE name = "Florida";

SELECT * FROM states;

/*Add a new column for state animal. Insert data for this new column. */
ALTER TABLE states ADD state_animal TEXT;

UPDATE states SET state_animal = "Texas Longhorn" 
	WHERE name = "Texas";
UPDATE states SET state_animal = " Grizzly Bear" 
	WHERE name = "California";
UPDATE states SET state_animal = " Beaver" 
	WHERE name = "New York";
UPDATE states SET state_animal = " Rocky Mountain Bighorn Sheep" 
	WHERE name = "Colorado";

SELECT * FROM states;
