CREATE TABLE Medical_Supplies (id INTEGER PRIMARY KEY, name TEXT, price_dollars INTEGER, material TEXT, warranty_years INTEGER);

INSERT INTO Medical_Supplies VALUES (1, "Forceps", 15, "Carbon Steel", 3);
INSERT INTO Medical_Supplies VALUES (2, "Scalpel Handle", 16, "Carbon Steel", 5);
INSERT INTO Medical_Supplies VALUES (3, "Retractor", 52, "Stainless Steel", 4);
INSERT INTO Medical_Supplies VALUES (4, "Speculum", 8, "Plastic", 1);
INSERT INTO Medical_Supplies VALUES (5, "Disposable Gloves (100 count)", 14, "Latex", 1);
INSERT INTO Medical_Supplies VALUES (6, "Surgical Masks (100 count)", 15, "Polypropylene", 1);
INSERT INTO Medical_Supplies VALUES (7, "Cloth Tape (10 cm x 10 m roll)", 5, "Cotton", 1);
INSERT INTO Medical_Supplies VALUES (8, "Bandages (2x4 in, 100 count)", 10, "Polyethylene", 1);
INSERT INTO Medical_Supplies VALUES (9, "Gauze Rolls (30 count)", 12, "Cotton", 1);
INSERT INTO Medical_Supplies VALUES (10, "IV Tube (88 in)", 5, "PVC", 1);
INSERT INTO Medical_Supplies VALUES (11, "Plastic Syringes (10 ml, 100 count)", 20, "Polypropylene", 1);
INSERT INTO Medical_Supplies VALUES (12, "Needle Tips (1 inch, 22 gauge, 100 ct)", 22, "Carbon Steel", 1);
INSERT INTO Medical_Supplies VALUES (13, "Scrub Cap", 11, "Rayon", 2);
INSERT INTO Medical_Supplies VALUES (14, "Scrub Top", 33, "Polyester", 1);
INSERT INTO Medical_Supplies VALUES (15, "Scrub Pants", 43, "Polyester", 1);

SELECT * FROM Medical_Supplies;

SELECT * FROM Medical_Supplies 
	ORDER BY price_dollars;

SELECT * FROM Medical_Supplies 
	WHERE warranty_years >= 3 
    ORDER BY price_dollars;

SELECT * FROM Medical_Supplies 
	WHERE material = "Carbon Steel";