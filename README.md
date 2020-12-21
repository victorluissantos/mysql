MySQL
======

![](https://img.shields.io/badge/MySQL-5.6-blue)
![https://tawk.to/chat/5afad6f35f7cdf4f05343d7e/default](https://img.shields.io/badge/Need%20help-tawk.to-%2350B648)


|  Function name   |                 Parameters                   |               Example of use              |      Result\Return      |
|------------------|----------------------------------------------|-------------------------------------------|-------------------------|
|   [`iniFCap()`](https://github.com/victorluissantos/mysql/blob/main/functions/iniFCap.sql)    |           	`VARCHAR(250)`                   |    `SELECT initCap('victor');`            |      `Victor`           |
|   [`iniCap()`](https://github.com/victorluissantos/mysql/blob/main/functions/initCap.sql)     |             `VARCHAR(250)`                   |    `SELECT initCap('victor luis');`       |      `Victor Luis`      |
| `moneyFormat()`  | `String(22)` `Decimal(22,2)`, `String(2)`    |    `SELECT moneyFormat(2020.12,'$');`     |      `$2.020,12`        |
|   `pasTimer()`   |                 `DateTime`                   |  `SELECT pasTimer('2020-12-21 18:30:15')` |      `1h`               |



## How run
1. You can Download to MySQL 5.6Version with Workbench in:<br/>
[Download](https://dev.mysql.com/downloads/mysql/5.6.html)<br/>
or if you using Windows:<br/>
[Download windows](https://dev.mysql.com/downloads/windows/installer/5.6.html)
