/**
 * @see PROCEDURE capaz de criptografar nos metodos MD%, SHA ou SHA1(de acordo com o informado), todas as linhas de uma informada coluna em uma dada tabela
 * @param param_table_name, nome da tabela que possui a coluna que deseja criptografar
 * @param param_column_name, nome da coluna que deseja criptografar na tabela informada no parametro anterior
 * @param method, nome do metodo de criptigrafia que desaja aplicar, disponiveis: MD5, SHA ou SHA1
*/
CREATE PROCEDURE `criptoFields`(param_table_name VARCHAR(35), param_column_name VARCHAR(35), method VARCHAR(4))
BEGIN
    DECLARE valid INT(11) DEFAULT NULL;
    DECLARE qtd_rows INT(11);
    DECLARE ind_rows INT(11) DEFAULT 0;
    
    SET @schemename = DATABASE();
    SET @tablename = param_table_name;
    SET @columnname = param_column_name;
    
    SET valid = (SELECT 
                        COUNT(TABLE_NAME)
                    FROM
                        INFORMATION_SCHEMA.TABLES
                    WHERE
                        TABLE_SCHEMA = @schemename
                        AND
                        UPPER(TABLE_NAME) = UPPER(@tablename) LIMIT 1);
                
    IF valid = 1 THEN
        DROP TEMPORARY TABLE IF EXISTS TEMP_ROWS;
        SET @tsql = CONCAT('CREATE TEMPORARY TABLE TEMP_ROWS(SELECT COUNT(id) AS `total` FROM ',@schemename,'.',@tablename,');');
        
        PREPARE stmt FROM @tsql;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
        
        SET qtd_rows = (SELECT total FROM TEMP_ROWS);
        
        WHILE ind_rows <= qtd_rows DO
            DROP TEMPORARY TABLE IF EXISTS TEMP_ID;
            DROP TEMPORARY TABLE IF EXISTS TEMP_COLUMN;
            
            SET @tsql = CONCAT('CREATE TEMPORARY TABLE TEMP_ID(SELECT id AS `id` FROM ',@schemename,'.',@tablename,' LIMIT ',ind_rows,',1);');
            PREPARE stmt FROM @tsql;
            EXECUTE stmt;

            SET @tsql = CONCAT('CREATE TEMPORARY TABLE TEMP_COLUMN(SELECT ',@columnname,' AS `criptocolumn` FROM ',@schemename,'.',@tablename,' LIMIT ',ind_rows,',1);');
            PREPARE stmt FROM @tsql;
            EXECUTE stmt;
            
            IF UPPER(method)='MD5' THEN
                SET @tsql = CONCAT('UPDATE ',@schemename,'.',@tablename,' SET ',@columnname,'=MD5((SELECT criptocolumn FROM TEMP_COLUMN LIMIT 1)) WHERE id=(SELECT id FROM TEMP_ID LIMIT 1);');
            ELSEIF UPPER(method)='SHA' THEN
                SET @tsql = CONCAT('UPDATE ',@schemename,'.',@tablename,' SET ',@columnname,'=SHA((SELECT criptocolumn FROM TEMP_COLUMN LIMIT 1)) WHERE id=(SELECT id FROM TEMP_ID LIMIT 1);');
            ELSEIF UPPER(method)='SHA1' THEN
                SET @tsql = CONCAT('UPDATE ',@schemename,'.',@tablename,' SET ',@columnname,'=SHA1((SELECT criptocolumn FROM TEMP_COLUMN LIMIT 1)) WHERE id=(SELECT id FROM TEMP_ID LIMIT 1);');
            ELSE
                SET @tsql = 'SELECT 1;';
            END IF;
            
            PREPARE stmt FROM @tsql;
            EXECUTE stmt;
            
            DEALLOCATE PREPARE stmt;
            
            DROP TEMPORARY TABLE TEMP_ID;
            DROP TEMPORARY TABLE TEMP_COLUMN;
        
            SET ind_rows = ind_rows+1;
        END WHILE;
        
        DROP TEMPORARY TABLE TEMP_ROWS;
    
    ELSE
        SELECT CONCAT('Tabela:',@tablename,' inexistente no Scheme(atual):',@schemename) as `retorno`;
    END IF;
END