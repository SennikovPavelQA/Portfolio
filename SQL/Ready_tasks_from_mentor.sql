Вывести среднюю заработную плату всех тестировщиков на проекте “ПУМЧД”.
Ответ должен содержать столбцы:
 Название проекта;
 Название должности;
 Средняя заработная плата.

SELECT projects.project_name, titles.titel_name, AVG(positions.salary) as average_salary
from positions
JOIN projects ON projects.project_id = positions.project_id
JOIN titles ON titles.id = positions.title_id
WHERE projects.project_name = 'ПУМЧД' AND titles.titel_name like '%тестировщик%'
GROUP by projects.project_name, titles.titel_name

Вывести всех работников, которые работают сразу на нескольких проектах.
Ответ должен содержать следующие столбцы:
 Имя и фамилия сотрудника;
 Название должности.

SELECT  CONCAT(employee.first_name, ' ', employee.last_name) AS Имя_Фамилия_сотрудника, 
titles.titel_name AS Должность
FROM positions
JOIN employee ON employee.employee_id = positions.employee_id
JOIN titles on titles.id = positions.title_id
GROUP BY Имя_Фамилия_сотрудника, Должность 
HAVING COUNT(positions.project_id) > 1;
