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
	IF DATE_FORMAT(dt,'%m/%d') BETWEEN ' 0321' AND '0419' THEN
		RETURN 'Áries';
	END IF;
    IF DATE_FORMAT(dt,'%m/%d') BETWEEN '0420' AND '0520' THEN
		RETURN 'Touro';
	END IF;
    IF DATE_FORMAT(dt,'%m/%d') BETWEEN '0521' AND '0620' THEN
		RETURN 'Gêmeos';
	END IF;
    IF DATE_FORMAT(dt,'%m/%d') BETWEEN '0621' AND '0722' THEN
		RETURN 'Câncer';	
	END IF;
        IF DATE_FORMAT(dt,'%m/%d') BETWEEN '0723' AND '0822' THEN
		RETURN 'Leão';
	END IF;
        IF DATE_FORMAT(dt,'%m/%d') BETWEEN '0823' AND '0922' THEN
		RETURN 'Virgem';
	END IF;
        IF DATE_FORMAT(dt,'%m/%d') BETWEEN '0923' AND '1022' THEN
		RETURN 'Libra';
	END IF;
        IF DATE_FORMAT(dt,'%m/%d') BETWEEN '1023' AND '1121' THEN
		RETURN 'Escorpião';
	END IF;
        IF DATE_FORMAT(dt,'%m/%d') BETWEEN '1122' AND '1221' THEN
		RETURN 'Sargitário';
	END IF;
        IF DATE_FORMAT(dt,'%m/%d') BETWEEN '1222' AND '0119' THEN
		RETURN 'Capricórnio';
	END IF;
        IF DATE_FORMAT(dt,'%m/%d') BETWEEN '0120' AND '0218' THEN
		RETURN 'Aquário';
	END IF;
        IF DATE_FORMAT(dt,'%m/%d') BETWEEN '0219' AND '0320' THEN
		RETURN 'Peixes';
	END IF;
    
END$$

DELIMITER ;


select signo('2024-04-01');
select signo('2024-05-01');
select signo('2024-06-01');
select signo('2024-07-01');
select signo('2024-08-01');
select signo('2024-09-01');
select signo('2024-10-01');
select signo('2024-11-01');
select signo('2024-12-01');
select signo('2024-01-01');
select signo('2024-02-01');
select signo('2024-03-01');
    
