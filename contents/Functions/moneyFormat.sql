delimiter $$

CREATE FUNCTION `money_format`(
								pvalor DECIMAL(22,2), 
								cs_decimal INT(11), 
								separador CHAR(1), 
								marcador VARCHAR(3)) RETURNS varchar(26) CHARSET utf8 COLLATE utf8_bin
BEGIN
	DECLARE	fvalor VARCHAR(26) DEFAULT '';
    DECLARE vDecimais VARCHAR(11) DEFAULT '00';
    DECLARE vInteiros VARCHAR(11) DEFAULT '0';
    
    SET fvalor = REPLACE(REPLACE(pvalor,'.',''),',','');
    SET vDecimais = SUBSTR(pvalor, LENGTH(pvalor)-(cs_decimal-1), cs_decimal);
    SET vInteiros = SUBSTRING_INDEX(fvalor, vDecimais, 1);
    
	SET fvalor = CONCAT(marcador,vInteiros,separador,vDecimais);

RETURN fvalor;
END$$

