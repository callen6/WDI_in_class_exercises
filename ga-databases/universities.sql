DROP TABLE universities;
CREATE TABLE universities
(
	id SERIAL4 PRIMARY KEY,
	name VARCHAR (25),
	address VARCHAR(25),
	founded DATE,
	undergrads FLOAT8,
	grads FLOAT8
);

INSERT INTO universities (name, address, founded, undergrads, grads) VALUES ('Babson', 'Wellesley, MA', '01/01/1919', 2015, 830);
INSERT INTO universities (name, address, founded, undergrads, grads) VALUES ('Ringling Clown College', 'Sarasota, FL', '01/01/1969', 600, 0);
INSERT INTO universities (name, address, founded, undergrads, grads) VALUES ('KU', 'Lawrence, KS', '01/01/1905', 20000, 5000); 
INSERT INTO universities (name, address, founded, undergrads, grads) VALUES ('Tufts', 'Boston, MA', '01/01/1895', 10000, 5000);
INSERT INTO universities (name, address, founded, undergrads, grads) VALUES ('MIT', 'Boston, MA', '01/01/1874', 6000, 2000);
INSERT INTO universities (name, address, founded, undergrads, grads) VALUES ('Northeastern', 'Boston, MA', '01/01/1931', 9879, 13423);
INSERT INTO universities (name, address, founded, undergrads, grads) VALUES ('Berklee', 'Boston, MA', '01/01/1958', 983, 234); 
INSERT INTO universities (name, address, founded, undergrads, grads) VALUES ('Simmons', 'Boston, MA', '01/01/1970', 269, 857);
INSERT INTO universities (name, address, founded, undergrads, grads) VALUES ('Duke', 'North Carolina', '01/01/1862', 12003, 5000);
INSERT INTO universities (name, address, founded, undergrads, grads) VALUES ('Northwestern', 'Chicago, IL', '01/01/1900', 9837, 1400);
INSERT INTO universities (name, address, founded, undergrads, grads) VALUES ('K State', 'Manhattan, KS', '01/01/1929', 4000, 3990);

ALTER TABLE universities ADD COLUMN rankings INTEGER;

UPDATE universities SET rankings = random() * 100;


ALTER TABLE universities ADD COLUMN avg_SAT INTEGER;

UPDATE universities SET avg_SAT = 799 + (1601 * random());



