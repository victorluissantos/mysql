DELIMITER ;;
CREATE FUNCTION `initFCap`(palavra VARCHAR(250)) RETURNS varchar(250) CHARSET latin1
BEGIN
	DECLARE primeira_letra VARCHAR(1);
    DECLARE restante_palavra VARCHAR(249);
    
    SET primeira_letra = (SELECT UPPER(SUBSTR(palavra, 1,1)));
    SET restante_palavra = (SELECT LOWER(SUBSTR(palavra, 2, LENGTH(palavra))));
    
RETURN CONCAT(primeira_letra,restante_palavra);
END ;;
DELIMITER ;