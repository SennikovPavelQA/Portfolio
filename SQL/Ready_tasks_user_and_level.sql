Initial data: there are 2 tables user and level with the corresponding set of fields. 
The table structure and field values are given below.		

Table - user						
id	user_name	level_id	skill			
1	Anton	1	900000			
2	Denis	3	4000			
3	Petr	2	50000			
4	Andrey	4	20			
5	Olga	1	600000			
6	Anna	1	1600000			
						
Table - level						
id	level_name					
1	admin					
2	power_user					
3	user					
4	guest					


1. Select from the user table all users with level_id=1, skill > 799000 and the letter "a" in their name

SELECT * FROM user 
WHERE level_id=1 
AND skill > 799000 
AND user_name LIKE '%a%';


2. Remove all users with skill less than 100000

DELETE FROM user 
WHERE skill < 100000;		
			

3. Output all data from the user table in descending order by skill field 
 
SELECT * FROM user
ORDER BY skill DESC;


4. Add a new user to the user table named Oleg, with level 4 and skill =10

INSERT INTO user (user_name, level_id, skill)
VALUES ('Oleg', 4, 10);


5. Update data in user table - for users with level_id less than 2 set skill 2000000

UPDATE user
SET skill = 2000000
WHERE level_id < 2;


6. Select user_name of all admin level users using the subquery

SELECT user_name FROM user
WHERE level_id = 
(SELECT id FROM level
WHERE level_name = 'admin');


7. Select user_name of all admin level users using join

SELECT user_name FROM user
JOIN level ON user.level_ID = level.id 
WHERE level.level_name = 'admin';			
			
			
			


			
			
			
			
			
