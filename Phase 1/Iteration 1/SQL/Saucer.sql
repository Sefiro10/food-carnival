DELIMITER //
/***************************************
				ACTIONS
****************************************/

/***************************************
			CRUD ACTIONS
****************************************/
CREATE PROCEDURE createSaucer (IN saucerID INT, saucerName VARCHAR(20), saucerDes TINYTEXT, cookingTime TINYINT, commerceID INT)
BEGIN	
		INSERT INTO SAUCER VALUES (saucerID, saucerName, sacucerDes, cookingTime, commerceID);
END // 

CREATE PROCEDURE readSaucer(IN saucerID INT)
BEGIN
	SELECT * 
	FROM SAUCER
    WHERE SaucerID=saucerID;
END //

CREATE PROCEDURE readAllSaucer()
BEGIN
	SELECT * 
	FROM SAUCER;
END //

CREATE PROCEDURE updateSaucer(IN saucerID INT, saucerName VARCHAR(20), saucerDes TINYTEXT, cookingTime TINYINT, commerceID INT)
BEGIN
	UPDATE SAUCER
    SET SaucerName=saucerName, 
		SaucerDes=saucerDes,
		CookingTime=cookingTime
	WHERE SaucerID=saucerID;
END //

CREATE PROCEDURE deleteSaucer(IN saucerID INT)
BEGIN
	DELETE FROM SAUCER WHERE SaucerID=saucerID;
END //
DELIMITER ;