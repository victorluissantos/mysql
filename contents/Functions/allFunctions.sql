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

DELIMITER ;;
CREATE FUNCTION `initcap`(nome VARCHAR(250)) RETURNS varchar(250)
BEGIN
    DECLARE qtd_caracteres INT DEFAULT 0;
    DECLARE indice INT DEFAULT 1;
    DECLARE frase VARCHAR(250) DEFAULT '';
    DECLARE palavra VARCHAR(250);
    
    SET qtd_caracteres = (SELECT 
                                LENGTH(nome)
                                -
                                LENGTH(REPLACE(nome, ' ',''))+1);
    
    WHILE indice <= qtd_caracteres DO
        IF indice = 1 THEN
            SET palavra = (SELECT SUBSTRING_INDEX(nome, ' ', 1));
            SET frase = CONCAT(
                        (SELECT 
                            UPPER(SUBSTR(palavra, 1, 1))
                        ),(
                        SELECT 
                            LOWER(SUBSTR(palavra, 2, LENGTH(palavra)))
                        )
                    );
        ELSE
            IF (LOWER(frase) like '%é%' 
                    OR 
                LOWER(frase) like '%è%'
                    OR
                LOWER(frase) like '%ẽ%'
                    OR
                LOWER(frase) like '%ê%'
                    OR
                LOWER(frase) like '%á%'
                    OR
                LOWER(frase) like '%à%'
                    OR
                LOWER(frase) like '%ã%'
                    OR
                LOWER(frase) like '%í%'
                    OR
                LOWER(frase) like '%ì%') THEN
                SET palavra = (SELECT
                                        SUBSTR(nome,
                                        LENGTH(SUBSTRING_INDEX(nome, 
                                        ' ', 
                                        indice-1))+1,
                                        LENGTH(SUBSTRING_INDEX(nome,
                                        ' ',
                                        indice)) - (LENGTH(SUBSTRING_INDEX(nome,
                                        ' ', indice-1))+1)
                                    ));
                                    
                SET palavra = REPLACE(palavra, '  ',' ');            
            ELSE
                SET palavra = (SELECT
                                        SUBSTR(nome,
                                        LENGTH(SUBSTRING_INDEX(nome, 
                                        ' ', 
                                        indice-1))+2,
                                        LENGTH(SUBSTRING_INDEX(nome,
                                        ' ',
                                        indice)) - (LENGTH(SUBSTRING_INDEX(nome,
                                        ' ', indice-1))+1)
                                    ));
            END IF;
            
            IF LOWER(palavra) IN('a','e','i','o','u','da','de','di','do','du','das','des','dis','dos','dus') THEN
                SET frase = CONCAT(frase,' ',LOWER(palavra));
            ELSE
                SET frase = CONCAT(frase,' ',CONCAT(
                        (SELECT 
                            UPPER(SUBSTR(palavra, 1, 1))
                        ),(
                        SELECT 
                            LOWER(SUBSTR(palavra, 2, LENGTH(palavra)))
                        )
                    ));
            END IF;
            
        END IF;

        SET indice = indice+1;
    END WHILE;

RETURN frase;
END ;;
DELIMITER ;

delimiter $$

CREATE FUNCTION `moneyFormat`(
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

