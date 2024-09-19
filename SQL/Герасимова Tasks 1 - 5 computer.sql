-- Задание: 1
-- Найдите номер модели, скорость и размер жесткого диска 
-- для всех ПК стоимостью менее 500 дол. 
-- Вывести: model, speed и hd

SELECT model, speed, hd FROM PC 
WHERE price < 500;

-- Задание: 2
-- Найдите производителей принтеров. Вывести: maker

SELECT maker FROM Product
WHERE type = 'Printer'
GROUP BY maker

-- Задание: 3
-- Найдите номер модели, объем памяти и размеры экранов 
-- ПК-блокнотов, цена которых превышает 1000 дол.

SELECT model, ram, screen FROM Laptop
WHERE price > 1000;

-- Задание: 4
-- Найдите все записи таблицы Printer для цветных принтеров.

SELECT * FROM Printer
WHERE color = 'y';

-- Задание: 5
-- Найдите номер модели, скорость и размер жесткого диска ПК, 
-- имеющих 12x или 24x CD и 
-- цену менее 600 дол.

SELECT model, speed, hd FROM PC 
WHERE (cd = '12x' OR cd = '24x') AND price < 600;
