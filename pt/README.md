# MySQL

Conjunto de Função úteis a utilização cotidiana no fornecimento, recebimento e tratativas de dados em banco de dados MySQL.


|	 Nome da Função   |                 Paramters                    |               Example of use              |      Result\Return      |
|---------------------|----------------------------------------------|-------------------------------------------|-------------------------|
|      `iniFCap()`    |           	`VARCHAR(250)`                   |    `SELECT initCap('victor');`            |      `Victor`           |
|      `iniCap()`     |             `VARCHAR(250)`                   |    `SELECT initCap('victor luis');`       |      `Victor Luis`      |
|  `moneyFormat()`    | `String(22)` `Decimal(22,2)`, `String(2)`    |    `SELECT moneyFormat(2020.12,'$');`     |      `$2.020,12`        |
|     `pasTimer()`    |                 `DateTime`                   |  `SELECT pasTimer('2020-12-21 18:30:15')` |      `1h`               |


## Como rodar
[Windows]
1. Faça donwload do mysql (5.6) Workbench no link
https://dev.mysql.com/downloads/windows/installer/5.6.html
ou
https://dev.mysql.com/downloads/mysql/5.6.html