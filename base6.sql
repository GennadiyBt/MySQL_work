-- Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов.
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

DELIMITER $$
CREATE FUNCTION time_fool (time_in_sen INT)
RETURNS varchar(100)
DETERMINISTIC
BEGIN
	DECLARE d INT DEFAULT 0;
    DECLARE h INT DEFAULT 0;
    DECLARE m INT DEFAULT 0;
    DECLARE s INT DEFAULT 0;
    DECLARE temp INT DEFAULT 0;
    
    SET d = FLOOR(time_in_sen/86400);
    SET temp = time_in_sen%86400;
    SET h = FLOOR(temp/3600);
    SET temp = temp%3600;
    SET m = FLOOR(temp/60);
    SET s = temp%60;
    
    RETURN CONCAT(d, ' days ', h, ' hours ', m, ' minutes ', s, ' seconds');
    
END $$

SELECT time_fool(123456);


-- Выведите только четные числа от 1 до 10.
-- Пример: 2,4,6,8,10

DELIMITER $$
CREATE  FUNCTION even_num ()
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
	DECLARE i INT DEFAULT 1;
    DECLARE str VARCHAR(20) DEFAULT '';
    WHILE i<=10 DO
		IF (i%2 = 0) THEN
			SET str = CONCAT(str, ', ', i);
			SET i = i+1;
		END IF;
	END WHILE;  
RETURN str;
END $$

SELECT even_num();
