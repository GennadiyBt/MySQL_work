-- Создаем базу данных
CREATE SCHEMA `my_sql_1` ;
-- Создаем таблицу, определяем поля, типы данных в полях исходя из условий
CREATE TABLE `my_sql_1`.`mobile_phones` (
  `id_mobile_phones` INT NOT NULL,
  `brand` VARCHAR(45) NOT NULL,
  `model_phone` VARCHAR(45) NOT NULL,
  `price` DECIMAL(8,2) NOT NULL,
  `quantity` SMALLINT NOT NULL,
  PRIMARY KEY (`id_mobile_phones`));

-- Заполняем таблицу данными
INSERT INTO `my_sql_1`.`mobile_phones` (`id_mobile_phones`, `brand`, `model_phone`, `price`, `quantity`) VALUES ('1', 'Realme', 'C 25S', '10990.00', '5');
INSERT INTO `my_sql_1`.`mobile_phones` (`id_mobile_phones`, `brand`, `model_phone`, `price`, `quantity`) VALUES ('2', 'Realme', 'C 30', '5990.00', '2');
INSERT INTO `my_sql_1`.`mobile_phones` (`id_mobile_phones`, `brand`, `model_phone`, `price`, `quantity`) VALUES ('3', 'Xiaomi', 'Redmi 9A', '5650.00', '2');
INSERT INTO `my_sql_1`.`mobile_phones` (`id_mobile_phones`, `brand`, `model_phone`, `price`, `quantity`) VALUES ('4', 'Xiaomi ', '12 Lite', '29389.00', '4');
INSERT INTO `my_sql_1`.`mobile_phones` (`id_mobile_phones`, `brand`, `model_phone`, `price`, `quantity`) VALUES ('5', 'Vivo', 'Y 35', '10940.00', '1');
INSERT INTO `my_sql_1`.`mobile_phones` (`id_mobile_phones`, `brand`, `model_phone`, `price`, `quantity`) VALUES ('6', 'Samsyng', 'Galaxy A32', '17990.00', '4');
INSERT INTO `my_sql_1`.`mobile_phones` (`id_mobile_phones`, `brand`, `model_phone`, `price`, `quantity`) VALUES ('7', 'Tecno', 'Spark 8C', '6999.00', '1');
INSERT INTO `my_sql_1`.`mobile_phones` (`id_mobile_phones`, `brand`, `model_phone`, `price`, `quantity`) VALUES ('8', 'OPPO', 'A96', '13990.00', '1');
INSERT INTO `my_sql_1`.`mobile_phones` (`id_mobile_phones`, `brand`, `model_phone`, `price`, `quantity`) VALUES ('9', 'Xiaomi', 'Redmi 10 NFC', '12990.00', '3');
INSERT INTO `my_sql_1`.`mobile_phones` (`id_mobile_phones`, `brand`, `model_phone`, `price`, `quantity`) VALUES ('10', 'Samsung', 'Galaxy Z Flip', '58467.00', '1');
INSERT INTO `my_sql_1`.`mobile_phones` (`id_mobile_phones`, `brand`, `model_phone`, `price`, `quantity`) VALUES ('11', 'Samsung', 'Galaxy S22', '55193.00', '3');
INSERT INTO `my_sql_1`.`mobile_phones` (`id_mobile_phones`, `brand`, `model_phone`, `price`, `quantity`) VALUES ('12', 'Apple', 'iPhone 11 128ГБ', '41933.00', '4');
INSERT INTO `my_sql_1`.`mobile_phones` (`id_mobile_phones`, `brand`, `model_phone`, `price`, `quantity`) VALUES ('13', 'Apple', 'iPhone 14 Pro 256ГБ', '139990.00', '2');
INSERT INTO `my_sql_1`.`mobile_phones` (`id_mobile_phones`, `brand`, `model_phone`, `price`, `quantity`) VALUES ('14', 'Nokia', 'X20', '36976.00', '1');
INSERT INTO `my_sql_1`.`mobile_phones` (`id_mobile_phones`, `brand`, `model_phone`, `price`, `quantity`) VALUES ('15', 'Nokia', 'C30', '10490.00', '1');

-- Исправляем ошибку, допущенную при заполнении
UPDATE `my_sql_1`.`mobile_phones` SET `brand` = 'Samsung' WHERE (`id_mobile_phones` = '6');

-- Активируем базу данных для прямого обращения к ней
USE my_sql_1;

-- Запрос на выборку конкретных полей по установленному значению одного из параметров (количество)
SELECT brand, model_phone, price FROM mobile_phones WHERE quantity > 2;

-- Запрос на выборку всех полей по установленному значению одного из параметров (производитель)
SELECT * FROM mobile_phones WHERE brand = "Samsung";
