-- FIRST SELECT
-- query the dim_customer(see the data of dim_customer)

-- SELECT customer_id,email FROM dim_customer;
-- we need use imtetation like in proper manner need to write the codes

SELECT * FROM dim_customer;

-- LIMIT
SELECT 
	customer_id,
    email
FROM
dim_customer
LIMIT 20;  -- its limit the data


-- WHERE  - it means condition(any condition)
-- you want to find the customer those are male/female this is one of condition 

-- WHERE :- basics level

-- Q) we need the data which have all the female ?
-- ans :- you asked do you want specific or all column :- if they all the column :-

SELECT 
	*
FROM
	dim_customer
WHERE
	gender = "F";  -- we can use single cout also 'F' to finding that because its a string
    
    
-- Q) we want the data of feamle but i need the specific condition of specific country 
--   NOTE :- You can use only one WHERE clause in your code if you need to add multiple filter you need to do this :-
		-- AND :- this is we use to add multiple filters.....

SELECT
	*
FROM
	dim_customer
WHERE
	(gender = 'F') AND (country = 'FRANCE') AND (Join_date > '2022-01-01');
-- if you use multiple filters do one thing use brackets that will remove the small errors while using multiple filters....


-- WHERE :- little advanced

SELECT
	*
FROM
	dim_customer
WHERE
	(gender = 'F') AND (country = 'France') OR (Join_date > '2022-01-01');
-- this have some minute error in the above code :- that's why you get FEMALE as well as MALE both

-- we need one more brackets in that OR part :-
SELECT 
	*
FROM 
	dim_customer
WHERE
	(gender = 'F') AND ((Country = 'France') OR (Join_date > '2022-01-01'));
    
    
-- LIKE :-

-- Q) Customer whose first name started with S ?

SELECT
	*
FROM
	dim_customer
WHERE
	first_name LIKE 'S%';
    

-- Q) Find the customers with sarting name :- S and ending name will be Y ?

SELECT 
	*
FROM
	dim_customer
WHERE
	first_name LIKE 'S%y'; 
    -- S%y :- it means first element will be S then % - means anything, y :- means ending element name

-- Q) find the name of in which first alphabet will be 'T' last alphabet 'y' and from the starting after two alphabets the fourth alphabet will be 'f'

SELECT
	*
FROM
	dim_customer
WHERE
	first_name LIKE 'T__f%y';
    -- T__f%y :- first will be T . __ -> two whatever. f:- fourth will be f. % :- anything. y :- the last alphabets 


