USE rental_powerbank;

-- Select all data from the table "Клієнти" (Clients)
SELECT * FROM Клієнти;

-- Select all data from the table "Тарифи" (Tarrifs)
SELECT * FROM Тарифи;

-- Select all data from the table "Станції" (Stations)
SELECT * FROM Станції;

-- Select all data from the table "ТарифиКлієнтів" (Client's Tarrifs)
SELECT * FROM ТарифиКлієнтів;

-- Select all data from the table "Павербанки" (Powerbanks)
SELECT * FROM Павербанки;

-- Select all data from the table "Оренда" (Rent)
SELECT * FROM Оренда;


SELECT * FROM Павербанки as p 
Where p.ЦінаГодина < 15.00;

SELECT * FROM Павербанки as p
Where p.Ємність BETWEEN 10000 AND 20000;

SELECT * FROM Павербанки as p
Where p.ЦінаГодина > 15.00 AND p.Ємність < 15000
ORDER BY p.ЦінаГодина DESC;

SELECT o.КодОренди, o.КодКлієнта, o.ДатаПочатку, o.Вартість
FROM Оренда as o
WHERE o.ДатаПочатку >= '2024-01-01' AND o.ДатаПочатку < '2024-02-01'
GROUP BY o.КодКлієнта;







