DELIMITER //
/***************************************
				ACTIONS
****************************************/

/***************************************
			CRUD ACTIONS
****************************************/
/*CREATE PROCEDURE createCustomer (IN IDCliente INT, UserName VARCHAR(30), Pass VARCHAR(30), Nombre VARCHAR(30), Apellido VARCHAR(30), Email VARCHAR(30))
BEGIN	
		INSERT INTO CLIENTE VALUES (IDCliente, UserName, Pass, Nombre, Apellido, Email);
END //*/

CREATE PROCEDURE readCustomer(IN customerID INT)
BEGIN
	SELECT * 
	FROM CUSTOMER
    WHERE CustomerID=customerID;
END //

CREATE PROCEDURE readAllCustomer()
BEGIN
	SELECT * 
	FROM CUSTOMER;
END //

/*CREATE PROCEDURE updateCustomer(IN IDCliente INT, Nombre VARCHAR(30), Apellido VARCHAR(30), Email VARCHAR(30))
BEGIN
	UPDATE NEGOCIO
    SET Nombre=Nombre, 
		Descripción=Descripción,
		Colonia=Colonia,
		Calle=Calle,
		NoExterior=NoExterior,
		NoMáxPedidos=NoMáxPedidos
	WHERE IDNegocio=IDNegocio;
END //*/

CREATE PROCEDURE deleteCustomer(IN customerID INT)
BEGIN
	DELETE FROM CUSTOMER WHERE CustomerID=customerID;
END //

DELIMITER ;
/*CALL createNegocio(1,"Lalo's Burger", 'Tienes hambre voraz, conoce nuestras hamburguesas','Valle Del Valle','Circuito Yeah', '1789 A',10);
CALL readNegocio(1);
CALL updateNegocio(1,"Lalo's Burger", 'Tienes hambre voraz, conoce nuestras hamburguesas','Valle Del Sol','Circuito Yeah', '1789 A',10);
CALL deleteNegocio(1);
SELECT *
FROM NEGOCIO*/