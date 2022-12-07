-- Модифицируем таблицу, созданную ранее: 

-- добавляем автомобили марки Шкода

INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES
(111123,'Skoda', 'ЗЕЛЕНЫЙ', '2005-01-01', null),
 	(111124,'Skoda', 'СИНИЙ', '2005-01-01', null);

  -- добавляем поле "Цена"  

ALTER TABLE auto ADD COLUMN PRISE DECIMAL;

-- заполняем поле "Цена"

UPDATE `homework4`.`auto` SET `PRISE` = '50000' WHERE (`REGNUM` = '111113');
UPDATE `homework4`.`auto` SET `PRISE` = '10000' WHERE (`REGNUM` = '111114');
UPDATE `homework4`.`auto` SET `PRISE` = '29000' WHERE (`REGNUM` = '111115');
UPDATE `homework4`.`auto` SET `PRISE` = '50000' WHERE (`REGNUM` = '111116');
UPDATE `homework4`.`auto` SET `PRISE` = '50000' WHERE (`REGNUM` = '111117');
UPDATE `homework4`.`auto` SET `PRISE` = '10000' WHERE (`REGNUM` = '111119');
UPDATE `homework4`.`auto` SET `PRISE` = '40000' WHERE (`REGNUM` = '111121');
UPDATE `homework4`.`auto` SET `PRISE` = '40000' WHERE (`REGNUM` = '111122');
UPDATE `homework4`.`auto` SET `PRISE` = '20000' WHERE (`REGNUM` = '111123');
UPDATE `homework4`.`auto` SET `PRISE` = '20000' WHERE (`REGNUM` = '111124');
UPDATE `homework4`.`auto` SET `PRISE` = '10000' WHERE (`REGNUM` = '111126');


-- Создайте представление, в которое попадут автомобили стоимостью до 25 000 долларов

CREATE VIEW view_auto AS
SELECT *
FROM auto
WHERE PRISE < 25000;

-- Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW)

ALTER VIEW view_auto AS
SELECT *
FROM auto
WHERE PRISE < 30000;

-- Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”

CREATE VIEW Skoda_Audi AS
SELECT *
FROM auto
WHERE MARK = "Skoda" OR MARK = "AUDI";
