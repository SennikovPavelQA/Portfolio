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
