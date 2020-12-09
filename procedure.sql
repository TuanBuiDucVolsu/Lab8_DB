USE lab6;
delimiter //
CREATE PROCEDURE pro_1()
  BEGIN
    SELECT * FROM shop;
  END//
delimiter ;
call pro_1;

delimiter //
CREATE PROCEDURE pro_2(IN idN INT(10))
BEGIN
SELECT * FROM shop WHERE id_N = idN;
END//
delimiter ;
call pro_2(3);

delimiter //
CREATE PROCEDURE count_products (OUT param1 INT)
  BEGIN
    SELECT COUNT(*) INTO param1 FROM shop;
  END//
delimiter ;
CALL count_products(@a);
SELECT @a;

delimiter //
CREATE PROCEDURE pro_3(IN sname VARCHAR(20))
  BEGIN
    SELECT id_N,place FROM shop
    where ssname = sname;
  END//
delimiter ;
call pro_3('HM');

SHOW PROCEDURE STATUS;