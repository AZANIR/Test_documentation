--TABLE1 Students: Student varchar (50), ID int
--TABLE2 Activities: ID int, Activity varchar(50), Cost int


1. Retrieve the names of the students and the courses they are enrolled in.

 SELECT S.Student, A.Activity
   FROM Students AS S inner join Activities AS A
   ON S.Id = A.ID;
---------------------------------------------------
2. Extract the total price of courses Mark Antony is enrolled in.

SELECT SUM(A.Cost)
    FROM Students AS S INNER JOIN Activities AS A
   ON S.Id = A.ID
   WHERE S.Student = 'Mark Antony';
--------------------------------------------------
3. Retrieve the average cost paid by user 084 for the courses he enrolled in.

 SELECT AVG(Cost)
   FROM Activities
   WHERE ID = 084;
-------------------------------------------------
4. Retrieve all the names of the activity and for those that are registered past students show the names of the students in the retrieval Sort the list according to the cost of the activity in ascending order.

 SELECT A.Activity,S.Student
   FROM Activities AS a LEFT JOIN Students AS S
   ON A.ID= S.Id
   ORDER BY A.Cost;
-------------------------------------------------
5. Pull out the most valuable activity and the names of the students enrolled in it.

 SELECT S.Student, A.Cost
   FROM Students AS S INNER JOIN Activities AS A
   ON S.Id = A.ID
   WHERE A.Cost = (select MAX(Cost)
                              FROM Activities);
-------------------------------------------------
6. Price increase update for all courses at $12 (not including tennis or golf).

UPDATE Activities
   SET Cost = Cost + 12
   WHERE Activity NOT IN ('Tennis','Golf');
-------------------------------------------------
7. Pull out the maximum price that is paid for swimming and call the column "special price".

 SELECT MAX (Cost) AS 'Special price'
   FROM Activities
   WHERE Activity = 'Swimming';
-------------------------------------------------
8. Pull out all the items of the activity that start with the letter S and whose cost is less than $35. Sort the list by cost in ascending order.

SELECT * FROM Activities
   WHERE Activity LIKE 'S%'
   AND Cost < '$35'
   ORDER BY cost;
