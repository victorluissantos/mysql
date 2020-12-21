DELIMITER ;;
CREATE FUNCTION `initCap`(nome VARCHAR(250)) RETURNS varchar(250) CHARSET latin1
BEGIN
    DECLARE qtd_palavras INT;
    DECLARE palavra VARCHAR(250);
    DECLARE frase VARCHAR(250) DEFAULT '';
    DECLARE primeira_letra VARCHAR(1);
    DECLARE restante_palavra VARCHAR(249);
    DECLARE ind INT DEFAULT 1;
    
    SET qtd_palavras = (
                            SELECT 
                                LENGTH(nome) 
                                    - LENGTH(REPLACE(nome, ' ', ''))+1
                                    );

    WHILE ind <= qtd_palavras DO
        IF ind = 1 THEN
            SET palavra = (SELECT SUBSTRING_INDEX(nome, ' ', 1));
            SET primeira_letra = (SELECT UPPER(SUBSTR(palavra, 1,1)));
            SET restante_palavra = (SELECT LOWER(SUBSTR(palavra, 2, LENGTH(palavra))));
            SET frase = CONCAT(primeira_letra,restante_palavra);
        ELSE
            SET palavra = (SELECT substr(nome,
                                    length(SUBSTRING_INDEX(nome, 
                                    ' ', 
                                    ind-1))+2,
                                    length(SUBSTRING_INDEX(nome, 
                                    ' ', 
                                    ind))-(length(SUBSTRING_INDEX(nome, 
                                    ' ', ind-1))+1)
                            ));
            SET primeira_letra = (SELECT UPPER(SUBSTR(palavra, 1,1)));
            SET restante_palavra = (SELECT LOWER(SUBSTR(palavra, 2, LENGTH(palavra))));
			SET frase = CONCAT(frase,' ',CONCAT(primeira_letra,restante_palavra));
        END IF;
        
        SET ind = ind + 1;
    END WHILE;

    RETURN frase;
END ;;
DELIMITER ;