-- Создаем базу данных
CREATE SCHEMA `homework2` ;
-- Создаем таблицу, определяем поля, типы данных в полях исходя из условий
CREATE TABLE `homework2`.`mobile_phones` (
  `id_mobile_phones` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `brand` VARCHAR(45) NOT NULL,
  `model_phone` VARCHAR(45) NOT NULL,
  `price` DECIMAL(8,2) NOT NULL,
  `quantity` SMALLINT NOT NULL);

-- Заполняем таблицу данными
INSERT INTO `homework2`.`mobile_phones` (`brand`, `model_phone`, `price`, `quantity`) VALUES ('Realme', 'C 25S', '10990.00', '50');
INSERT INTO `homework2`.`mobile_phones` (`brand`, `model_phone`, `price`, `quantity`) VALUES ('Realme', 'C 30', '5990.00', '200');
INSERT INTO `homework2`.`mobile_phones` (`brand`, `model_phone`, `price`, `quantity`) VALUES ('Xiaomi', 'Redmi 9A', '5650.00', '200');
INSERT INTO `homework2`.`mobile_phones` (`brand`, `model_phone`, `price`, `quantity`) VALUES ('Xiaomi ', '12 Lite', '29389.00', '400');
INSERT INTO `homework2`.`mobile_phones` (`brand`, `model_phone`, `price`, `quantity`) VALUES ('Vivo', 'Y 35', '10940.00', '100');
INSERT INTO `homework2`.`mobile_phones` (`brand`, `model_phone`, `price`, `quantity`) VALUES ('Samsung', 'Galaxy A32', '17990.00', '40');
INSERT INTO `homework2`.`mobile_phones` (`brand`, `model_phone`, `price`, `quantity`) VALUES ('Tecno', 'Spark 8C', '6999.00', '10');
INSERT INTO `homework2`.`mobile_phones` (`brand`, `model_phone`, `price`, `quantity`) VALUES ('OPPO', 'A96', '13990.00', '150');
INSERT INTO `homework2`.`mobile_phones` (`brand`, `model_phone`, `price`, `quantity`) VALUES ('Xiaomi', 'Redmi 10 NFC', '12990.00', '300');
INSERT INTO `homework2`.`mobile_phones` (`brand`, `model_phone`, `price`, `quantity`) VALUES ('Samsung', 'Galaxy Z Flip', '58467.00', '150');
INSERT INTO `homework2`.`mobile_phones` (`brand`, `model_phone`, `price`, `quantity`) VALUES ('Samsung', 'Galaxy S22', '55193.00', '230');
INSERT INTO `homework2`.`mobile_phones` (`brand`, `model_phone`, `price`, `quantity`) VALUES ('Apple', 'iPhone 11 128ГБ', '41933.00', '40');
INSERT INTO `homework2`.`mobile_phones` (`brand`, `model_phone`, `price`, `quantity`) VALUES ('Apple', 'iPhone 14 Pro 256ГБ', '139990.00', '200');
INSERT INTO `homework2`.`mobile_phones` (`brand`, `model_phone`, `price`, `quantity`) VALUES ('Nokia', 'X20', '36976.00', '100');
INSERT INTO `homework2`.`mobile_phones` (`brand`, `model_phone`, `price`, `quantity`) VALUES ('Nokia', 'C30', '10490.00', '10');

-- "Фильтруем" с использованием оператора CASE

SELECT brand, model_phone, quantity,
	CASE
		WHEN quantity < 100 THEN 'Меньше 100'
        WHEN quantity >= 100 AND quantity <=300 THEN 'От 100 до 300'
        ELSE 'Больше 300'
	END AS 'количество'
FROM mobile_phones;
