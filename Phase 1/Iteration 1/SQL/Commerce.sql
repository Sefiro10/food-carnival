DELIMITER //
/***************************************
				ACTIONS
****************************************/
CREATE PROCEDURE changeCommercePassword (IN CommerceID INT, IN Pass VARCHAR(30))
BEGIN 
	UPDATE COMMERCE
    SET Pass=Pass
    WHERE CommerceID=CommerceID;
END //

/***************************************
			CRUD ACTIONS
****************************************/
CREATE PROCEDURE createCommerce(IN commerceID INT, commerceName VARCHAR(30), commerceDescription TINYTEXT, suburb VARCHAR(30), street VARCHAR(30), outdoorNum VARCHAR(10), maxRequisitionNum TINYINT)
BEGIN
	IF commerceDescription IS NULL THEN 
		INSERT INTO COMMERCE(CommerceID, CommerceName, CommerceDescription, Suburb, Street, OutdoorNum, MaxRequisitionNum) VALUES (commerceID, commerceName, NULL, suburb, street, outdoorNum, maxRequisitionNum);
	ELSE	
		INSERT INTO COMMERCE(CommerceID, CommerceName, CommerceDescription, Suburb, Street, OutdoorNum, MaxRequisitionNum) VALUES (commerceID, commerceName, commerceDescription, suburb, street, outdoorNum, maxRequisitionNum);
    END IF;
END //

CREATE PROCEDURE readCommerce(IN commerceID INT)
BEGIN
	SELECT * 
	FROM COMMERCE
    WHERE CommerceID=commerceID;
END //

CREATE PROCEDURE updateCommerce(IN commerceID INT, commerceDescription TINYTEXT, suburb VARCHAR(30), street VARCHAR(30), outdoorNum VARCHAR(10), maxRequisitionNum TINYINT)
BEGIN
	UPDATE COMMERCE
    SET CommerceDescription=commerceDescription,
		Suburb=suburb,
		Street=street,
		OutdoorNum=outdoorNum,
		MaxRequisitionNum=maxRequisitionNum
	WHERE CommerceID=commerceID;
END //

CREATE PROCEDURE deleteCommerce(IN commerceID INT)
BEGIN
	DELETE FROM COMMERCE WHERE CommerceID=commerceID;
END //

DELIMITER ;

/*
CALL createCommerce(1,"Lalo's Burger", 'Tienes hambre voraz, conoce nuestras hamburguesas','Valle Del Valle','Circuito Yeah', '1789 A',10);
CALL readCommerce(1);
CALL updateCommerce(1,'Tienes hambre voraz, conoce nuestras hamburguesas','Valle Del Sol','Circuito Yeah', '1789 A',10);
CALL deleteCommerce(1);
SELECT *
FROM COMMERCE
*/