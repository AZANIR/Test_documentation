--TABLE1 Employees: Employee_id int, F_name varchar (50), L_name varchar (50), Seniority int, Salary int, Nationality varchar (50)
--TABLE2 Aircrafts: Code int , Manufacture varchar (50), Model int, Type varchar (50), Seatsint varchar (50), Cargo int
--TABLE3 Flights: Flight_No int, Destination varchar (50), Employee_id int, AC_Code int, Connection varchar (50), Price int


1 Find the code number of the planes in the company that can carry over 420 passengers (seats) and name the column AIRCRAFTS BIG.

   SELECT Code as "BIG AIRCRAFT"
   FROM Aircraft
   WHERE seat > 420;

2 Find the amount of salaries that are paid to the Croatian pilots, not including pilots whose salary is less than or equal to 20000 dollars.

   SELECTsum(salary)
   FROM Employees 
   WHERE Nationality='Croatia'
   AND Salary > 20000;

3 Find the last names and first names of the pilots who work on the following routes: London, Rome, Istanbul.
  
   SELECT E.L_name,E.F_name
   FROM Employees AS E INNER JOIN Flights AS F
   ON E.Employee_id=F.Employee_id
   WHERE F.Destination in('London','Rome','Istanbul');

4 For all AIRBUS type planes, delete the allowed baggage in favor of an empty value in the table (no model: A380).
   
   UPDATE Aircraft
   SET Cargo=null
   WHERE Model<>'A380';

5 Find the average salary of all the pilots who fly on planes whose number ranges from 320-345 (not including).
   
    SELECT AVG(E.Salary)
    FROM Employees AS E INNER JOIN Flights AS F
    ON E.Employee_id=F.Employee_id
    WHERE F.AC_Code BETWEEN 321 AND 344;

6 Find what is the highest salary of all the pilots whose personal number (id_Employee) is 145 or 16 or 11 or 57.
    
    SELECT MAX(salary)
    FROM Employees
    WHERE Employee_id IN(145,16,11,57);

7 Find out which destinations the oldest pilots in the company fly to (10 > seniority).
   
   SELECT DISTINCT(F.Destination)
   FROM Employees AS E INNER JOIN  Flights AS F
   ON E.Employee_id=F.Employee_id
   WHERE E.Seniority>10;

8 Find the number of seats available in the Boeing Mmodule 767 aircraft.

    SELECT Seats
    FROM Aircraft
    WHERE Manufactory='Boeing' AND Model=767;

9 Arrange the flight table by destination in ascending alphabetical order and a secondary arrangement by descending flight number (without flights departing to destinations: Sofia or Kyiv).

   SELECT * FROM Flights
   WHERE Destination NOT IN('Sofia','kiev')
   ORDER BY Destination,Flight_No DESC; 

10 Find the first names of the pilots for whom no seniority has been defined (SENIORITY).

     SELECT F_name
     FROM Employees
     WHERE Seniority IS NULL;

11 Updated the list of flights again for the city of Tel Aviv in favor of Tel Aviv-Jaffa.

     UPDATE Flights
     SET Destination='TLV_J'
     WHERE Destination='TLV';

12 Retrieve all the information of the pilots and if they are also currently active in flights, indicate the flight number they are responsible for.

     SELECT E.*,F.Flight_No
     FROM Employees AS E LEFT JOIN Flights AS F
     ON Employee_id=F.Employee_id;
