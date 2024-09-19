-- Задание 1
-- Вывести производителя, 
-- номер модели и 
-- цену 
-- каждого компьютера, имеющегося в базе данных.

SELECT prd.maker, PC.model, PC.price  
FROM product prd JOIN PC 
ON prd.model = PC.model;


-- Задание 2
-- Для каждого производителя, 
-- выпускающего ноутбуки c объёмом
-- жесткого диска не менее 10 Гбайт, 
-- найти скорости таких ноутбуков. 
-- В выводе должны быть производитель и 
-- скорость

SELECT maker, speed
FROM product prd JOIN laptop l ON prd.model = l.model
WHERE l.hd >=10;

-- Задание 3
-- Вывести производителей и 
-- цену 
-- самых дешевых 
-- цветных 
-- принтеров.

SELECT DISTINCT maker, price  
FROM product prd JOIN printer pr ON prd.model= pr.model  
WHERE price = (SELECT MIN(price)FROM printer WHERE color = 'y' ) AND color = 'y'  

-- Задание 4
-- Вывести все модели ПК, 
-- их производителей и 
-- цену

SELECT PC.model, prd.maker, PC.price  
FROM product prd JOIN PC 
ON prd.model = PC.model;
