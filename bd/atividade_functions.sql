-- MIN = 5
-- MAX = 15

select ROUND(RAND()*(15-5))+5;
select ROUND(RAND()*(15-5))+5;
select ROUND(RAND()*(15-5))+5;
select ROUND(RAND()*(15-5))+5;
select ROUND(RAND()*(15-5))+5;
select ROUND(RAND()*(15-5))+5;
select ROUND(RAND()*(15-5))+5;

select rand(); -- 0.05 x 10 = round(8.5) = 9 + 5 = 14
select rand(); -- 0.31 x 10 = round(3.1) = 3 + 5 = 8
select rand(); -- 0.00 x 10 = round
select rand();
select rand();
select rand();
select rand();
select rand();

-- 01
DELIMITER $$
CREATE FUNCTION valor_aleatorio(min INT, max INT)
RETURNS INT
NOT DETERMINISTIC
READS SQL DATA
BEGIN
	RETURN ROUND(RAND()*(max-min))+min;
END$$
DELIMITER ;
-- DROP FUNCTION valor_aleatorio;
select valor_aleatorio(5,15);

-- 02

DELIMITER $$

CREATE FUNCTION data_brasil(periodo DATE)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
	RETURN date_format(período, '%d/%m/%y');
END $$

DELIMITER ;
select data_brasil('2024-12-25'), data_brasil(CURDATE());

-- 03
DELIMITER $$
CREATE FUNCTION signo(dt DATE)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
	IF DATE_FORMAT(dt,'%m/%d') BETWEEN ' 21/03' AND '19/04' THEN
		RETURN 'Áries';
	END IF;
    IF DATE_FORMATE(dt,'%m/%d') BETWEEN '20/04' AND '20/05' THEN
		RETURN 'Touro';
	END IF;
    IF DATE_FORMAT(dt,'%m/%d') BETWEEN '21/05' AND '20/06' THEN
		RETURN 'Gêmeos';
	END IF;
    IF DATE_FORMAT(dt,'%m/%d') BETWEEN '21/06' AND '22/07' THEN
		RETURN 'Câncer';
	END IF;
    IF DATE_FORMAT(
END$$
    
