/**
 * @see PROCEDURE capaz de verificar se o valor de uma determinada coluna se repete e exlcuir os duplicados
 * @param tableName, nome da tabela que possui a coluna que deseja remover os duplicados
 * @param collumName, nome da coluna que deseja remover os duplicados
*/
DELIMITER $$
CREATE PROCEDURE `removeDouble`(tableName VARCHAR(120), collumName VARCHAR(120))
BEGIN
	DECLARE numLimit INT(11);
    DECLARE qtd_rows INT(11);
    DECLARE ind_rows INT(11) DEFAULT 0;
    DECLARE total_unico INT(11) DEFAULT 0;
    DECLARE collumIndicated VARCHAR(250);
    
	set numLimit = 1;
    
    DROP TEMPORARY TABLE IF EXISTS TEMP_ROWS;
    SET @tsql = CONCAT('CREATE TEMPORARY TABLE TEMP_ROWS(SELECT r.distinto, r.total
								FROM
								(
								SELECT 
									COUNT(v.',collumName,') as `total`,
									v.',collumName,' as `distinto`
								FROM
									',tableName,' v
								GROUP BY v.',collumName,') r
								WHERE
									r.total > ',numLimit,');');
	
	PREPARE stmt FROM @tsql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
    
    SET qtd_rows = (SELECT count(TR.total) FROM TEMP_ROWS TR);
    
    WHILE ind_rows < qtd_rows DO

		SET total_unico = (SELECT TR.total FROM TEMP_ROWS TR LIMIT ind_rows, 1)-1;
        SET collumIndicated = (SELECT TR.distinto FROM TEMP_ROWS TR LIMIT ind_rows, 1);
		SELECT total_unico;
		
		SET @lsql = CONCAT('DELETE FROM ',tableName,' WHERE ',collumName,'=',collumIndicated,' LIMIT ',total_unico,';');
		
		PREPARE ltmt FROM @lsql;
		EXECUTE ltmt;
		DEALLOCATE PREPARE ltmt;

        SET ind_rows = ind_rows+1;
    END WHILE;
    DROP TEMPORARY TABLE IF EXISTS TEMP_ROWS;
END$$

DELIMITER ;