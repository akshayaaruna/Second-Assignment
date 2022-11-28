CREATE TABLE nutrition(slno INT,productname varchar(40),water INT,energy INT,protein INT,carbs INT);
INSERT INTO nutrition(slno,productname,water,energy,protein,carbs)VALUES(1,'Butter',45,26,9,45);
INSERT INTO nutrition(slno,productname,water,energy,protein,carbs)VALUES(2,'Cheese',34,19,67,56);
INSERT INTO nutrition(slno,productname,water,energy,protein,carbs)VALUES(3,'Fish',45,69,87,11);
INSERT INTO nutrition(slno,productname,water,energy,protein,carbs)VALUES(4,'Lamb,',34,59,78,24);
INSERT INTO nutrition(slno,productname,water,energy,protein,carbs)VALUES(5,'Egg',23,19,54,67);
SELECT* FROM nutrition

#min and max
SELECT MIN(energy)
FROM nutrition
WHERE energy<60;

SELECT MAX(protein)
FROM nutrition
WHERE protein<40;

#AVERAGE
SELECT AVG(energy)
FROM nutrition;

#COUNTING
SELECT COUNT(energy)
FROM nutrition;


#SUM
SELECT SUM(energy)
FROM nutrition;

# LOGICAL OPERATIONS
SELECT * FROM nutrition WHERE protein<50 and productname='cheese';
SELECT * FROM nutrition WHERE carbs =87 OR carbs= 54;

#ADDINGCOLUMN 
ALTER TABLE nutrition
ADD Ratings float ;
SELECT*FROM nutrition

#DROPCOLUMN
ALTER TABLE nutrition
DROP COLUMN Ratings;
SELECT*FROM nutrition

#CREATEANOTHERTABLE
CREATE TABLE nutrition1(slno INT,productname varchar(40),water INT,energy INT,protein INT,carbs INT);
INSERT INTO nutrition1(slno,productname,water,energy,protein,carbs)VALUES(1,'oil',45,62,8,44);
INSERT INTO nutrition1(slno,productname,water,energy,protein,carbs)VALUES(2,'salt',43,91,64,55);
INSERT INTO nutrition1(slno,productname,water,energy,protein,carbs)VALUES(3,'ghee',54,69,87,12);
INSERT INTO nutrition1(slno,productname,water,energy,protein,carbs)VALUES(4,'Lamb,',43,55,57,24);
INSERT INTO nutrition1(slno,productname,water,energy,protein,carbs)VALUES(5,'Egg',32,18,54,66);
SELECT* FROM nutrition1

#INNERJOIN
SELECT nutrition.productname,nutrition.energy,nutrition1.productname,nutrition1.energy
FROM nutrition
INNER JOIN nutrition1
ON nutrition.energy = nutrition1.energy;

#FULLJOIN
SELECT nutrition.productname,nutrition.energy,nutrition1.productname,nutrition1.energy
FROM nutrition
FULL JOIN nutrition1
ON nutrition.energy = nutrition1.energy;

#LEFTJOIN
SELECT nutrition.productname,nutrition.energy,nutrition1.productname,nutrition1.energy
FROM nutrition
LEFT JOIN nutrition1
ON nutrition.energy = nutrition1.energy;

#RIGHTJOIN
SELECT nutrition.productname,nutrition.energy,nutrition1.productname,nutrition1.energy
FROM nutrition
RIGHT JOIN nutrition1
ON nutrition.energy = nutrition1.energy;

#leftouterjoin
SELECT nutrition.productname,nutrition.energy,nutrition1.productname,nutrition1.energy
FROM nutrition
LEFT OUTER JOIN nutrition1
ON nutrition.energy = nutrition1.energy;

#RIGHTOUTERJOIN
SELECT nutrition.productname,nutrition.energy,nutrition1.productname,nutrition1.energy
FROM nutrition
RIGHT OUTER JOIN nutrition1
ON nutrition.energy = nutrition1.energy;

#fullouterjoin
SELECT nutrition.productname,nutrition.energy,nutrition1.productname,nutrition1.energy
FROM nutrition
FULL OUTER JOIN nutrition1
ON nutrition.energy = nutrition1.energy;

#descending 
select *from nutrition order by energy desc;

#ascending
select *from nutrition order by energy asc;

#GIVING TEMPORARY NAME TO A COLUMN
SELECT energy AS energycal
FROM nutrition