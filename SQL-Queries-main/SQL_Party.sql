--TABLE Party (Name char(10), City char(10), Department char(10), Age tinyint, Gender char(1), Transport char(10), Food char(10), Drink1 char(10), Drink2 char(10));


1. Pull out the names only of those who confirmed arrival to the party - that is, everyone specified in the table.

SELECT Name
FROM party;

2. Pull out the names and ages of everyone who has informed which means of transportation they will arrive.

SELECT Name, Age
FROM party
WHERE Transport is not null;

3. Find all the details of the people coming from Netanya.

SELECT * FROM party
WHERE City = 'Netanya';

4. Find the details of everyone who arrives by taxi or train.

SELECT * FROM party
WHERE Transport IN ('taxi', 'train');

5. Find the details of all the men in the party.

SELECT * FROM party
WHERE Gender = 'M'; ;

6. Find all the details of the three oldest people at the party.

SELECT * FROM party
ORDER BY Age DESC
LIMIT  3;
--=============
SELECT TOP 3 *
FROM party
ORDER BY Age DESC;

7. Locate all the details of those who come to the party and are not from the sales department.

SELECT * FROM party
WHERE Department != 'sales';

8. Find the age and name of the person who did not say whether he is interested in a meat or dairy meal.

SELECT Age, Name
FROM party
WHERE Food NOT IN ( 'meat' , 'dairy');

9. Find the name, age and gender of someone who is not known how he prepares to get to the party

SELECT Name, Age, Gender
FROM party
WHERE Transport IS NULL;

10. Locate the department and name of the person who wishes to drink wine or vodka or who did not fill out one of the columns of
drinking at the table.

SELECT Department, Name
FROM party
WHERE Drink1 IS NULL
	OR Drink2 IS NULL
	OR Drink1 IN ('Wine', 'Vodka')
	OR Drink2 IN ('Wine', 'Vodka');

====
** Find the department and name of the person who wants to drink wine or vodka or who did not fill in any of the columns
of drinking in the table (ie did not select any drinking

SELECT Department, Name
FROM party
WHERE Drink1 IS NULL 
	AND Drink2 IS NULL
	OR Drink1 IN('Wine', 'Vodka')
	OR Drink2 IN('Wine', 'Vodka');

11. Find the name, meal, class and age of the person drinking beer.

SELECT Name, Food, Department, Age
FROM party
WHERE Drink1 = 'Beer' 
	OR Drink2 = 'Beer';

12. Find the name and age of everyone who drinks vodka or water or Pepsi.

SELECT Name, Age
FROM party
WHERE Drink1 IN('Vodka','Water','Pepsi')
 OR Drink2 in('Vodka', 'Water', 'Pepsi');

13. Find the gender of the person who drinks beer and Pepsi together.

SELECT Department, Name , *
FROM party
WHERE Drink1 = 'Pepsi' 
	AND drink2 = 'Beer'
	OR Drink1 = 'Beer' 
	AND drink2 = 'Pepsi';

14. Locate the name and city of residence of everyone who reported what they wanted to drink in both columns.

SELECT Name, City
FROM party
WHERE Drink1 IS NOT NULL 
	AND Drink2 IS NOT NULL;

15. Sort the table in ascending order according to the age of the participants.

SELECT * FROM party
ORDER BY Age ASC;

16. List the name of the participants and the drinks they ordered for all those whose origin is in the city where the letter A.

SELECT Name, Drink1, Drink2
FROM party
WHERE City like('%a%');

17. Pull out everyone whose name ends with the letter I in English like the opening letter in the word (INDIA).

SELECT * FROM party
WHERE Name like('%i');

18. Count the age of everyone who comes from the sales department and ordered to eat meat.

SELECT Age
FROM party
WHERE Department = 'sales' AND Food = 'meat';

19. Bring out the drinks for everyone who is not from the management department.

SELECT Drink1, Drink2
FROM party
WHERE Department != 'management';

20. Pull out the participants name and department of anyone who is over 30 years old.

SELECT Name, Department
FROM party
WHERE Age > 30;

21. Pull out the name of everyone who is under 60 years old and arrives by car or train.

SELECT Name
FROM party
WHERE Age < 60 and Transport IN ('Car', 'train');

22. Edit the table in a new order according to the name of the city the participants come from in ascending order.

SELECT * FROM party
ORDER BY City ASC;

23. List the drink ordered by the person who did not report how he would arrive and did not report what he would like to eat.

SELECT Drink1, Drink2
FROM party
WHERE Transport IS NULL AND Food IS NULL;

24. Pull out the means of transportation and the age of anyone who did not give a report regarding the desired meal.

SELECT Transport, Age
FROM party
WHERE Food IS NULL;

25. Pull out the food, the drink, the name and age of everyone who is not from the management or sales department.

SELECT Food, Drink1, Drink2 , Name , Age
FROM party
WHERE Department NOT IN('management', 'sales');

26. Pull out the type of drink and meal of everyone whose name is Dodi or Mirev.

SELECT Food, Drink1, Drink2
FROM party
WHERE Name IN ('Dudi', 'Merav');

27. Pull out the name of someone who is female and also between the ages of 20-40.

SELECT Name
FROM party
WHERE Gender = 'F' 
	AND Age BETWEEN 20 AND 40 ;

28. Pull out the name of someone who is over 18 and belongs to the sales department and wants to drink water at the party.
SELECT Name
FROM party
WHERE Age > 18 
	AND Department = 'sales' 
	AND (Drink1 = 'water' or Drink2 = 'water');

29. Pull out the names of all the women who arrive by any means except a motorcycle.

SELECT Name
FROM party
WHERE Gender = 'F' AND Transport != 'bike';

30. Take out the drinks, food and name of anyone who does not come from Ramla or Gedera or Holon.

SELECT Drink1 ,Drink2 ,Food ,Name
FROM party
WHERE City NOT IN ('Ramla', 'Gedera', 'Holon');

31. Pull out the name of the city of anyone who is over 40 years old, who is not from the management department, whose name begins with the letter D.
SELECT City
FROM party
WHERE Age > 40 and Department != 'management' AND Name LIKE'D%';
