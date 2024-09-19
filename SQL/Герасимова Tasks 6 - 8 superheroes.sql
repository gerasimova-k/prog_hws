-- Задание 6
-- Посчитать количество супергероинь с рыжими волосами 
-- (и оттенки рыжего). 
-- Вывести цвет волос и 
-- количество супергероинь с этим цветом волос 
-- от более популярных к менее популярным.

SELECT hair, COUNT(*) FROM superheroes
WHERE (hair IN ('Strawberry Blond Hair', 'Red Hair', 'Auburn Hair')
	)
	AND gender='Female Characters'
GROUP BY hair 
ORDER BY COUNT(*) DESC;

-- Задание 7
-- Воспроизвести решение Задания 6 для злодеек и посчитать их.

SELECT hair, COUNT(*) FROM superheroes
WHERE (hair IN ('Strawberry Blond Hair', 'Red Hair', 'Auburn Hair')
	)
	AND gender='Female Characters'
	AND align='Bad Characters'
GROUP BY hair 
ORDER BY COUNT(*) DESC;

-- Задание 8
-- Какие топ-10 сочетаний цвета волос и голубых глаз? 
-- Вывести название цвета волос и количество супергероев, 
-- имеющих такой цвет в сочетании с голубыми глазами, 
-- начиная с самых популярных.

SELECT hair, COUNT(*) FROM superheroes
WHERE eye = 'Blue Eyes'
GROUP BY hair 
ORDER BY COUNT(*) DESC
LIMIT 10;

