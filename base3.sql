- Создаем базу данных
CREATE SCHEMA homework3 ;
USE homework3;
-- Создаем таблицу, определяем поля, типы данных в полях исходя из условий
CREATE TABLE homework3.workers (
  id_worker INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name_worker VARCHAR(45) NOT NULL,
  surname VARCHAR(45) NOT NULL,
  speciality VARCHAR(45) NOT NULL,
  seniority SMALLINT NOT NULL,
  salary INT NOT NULL,
  age SMALLINT NOT NULL);
INSERT INTO workers (name_worker, surname, speciality, seniority, salary, age)
VALUES
    	('Вася', 'Васькин', 'начальник', 40, 100000, 60),
    	('Петя', 'Петькин', 'начальник', 8, 70000, 30),
    	('Катя', 'Каткина', 'инженер', 2, 70000, 25),
    	('Саша', 'Сашкин', 'инженер', 12, 50000, 35),
    	('Иван', 'Иванов', 'рабочий', 40, 30000, 59),
   	 ('Петр', 'Петров', 'рабочий', 20, 25000, 40),
    	('Сидор', 'Сидоров', 'рабочий', 10, 20000, 35),
   	 ('Антон', 'Антонов', 'рабочий', 8, 19000, 28),
    	('Юра', 'Юркин', 'рабочий', 5, 15000, 25),
    	('Максим', 'Воронин', 'рабочий', 2, 11000, 22),
    	('Юра', 'Галкин', 'рабочий', 3, 12000, 24),
   	 ('Люся', 'Люськина', 'уборщик', 10, 10000, 49);    

-- Отсортируйте поле “зарплата” (salary) в порядке убывания и возрастания
-- убывание
SELECT salary FROM workers
ORDER BY salary;
-- возрастание
SELECT salary FROM workers
ORDER BY salary DESC;

-- Выведите 5 максимальных зарплат (salary)
SELECT salary FROM workers
ORDER BY salary DESC
LIMIT 5;    

-- Подсчитать суммарную зарплату(salary) по каждой специальности (post)
SELECT speciality, SUM(salary)
FROM workers
GROUP BY speciality;

-- Найти количество сотрудников по специальности “Рабочий” (post) в возрасте от 24 до 42 лет.

SELECT COUNT(*) AS count_worker
FROM workers
	WHERE speciality = 'рабочий' AND age >= 24 AND age <= 42;

-- Найти количество специальностей
SELECT COUNT(DISTINCT speciality) FROM workers;

-- Вывести специальности, у которых средний возраст сотрудника меньше 44 лет

SELECT speciality FROM workers
GROUP BY speciality
	HAVING AVG(age) < 44;
