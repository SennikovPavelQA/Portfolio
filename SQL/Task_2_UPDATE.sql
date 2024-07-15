SELECT  CONCAT(employee.first_name, ' ', employee.last_name) AS Имя_Фамилия_сотрудника, 
titles.titel_name AS Должность
FROM positions
JOIN employee ON employee.employee_id = positions.employee_id
JOIN titles on titles.id = positions.title_id
GROUP BY Имя_Фамилия_сотрудника, Должность 
HAVING COUNT(positions.project_id) > 1;