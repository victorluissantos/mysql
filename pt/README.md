MySQL
======
This project provides several functions and stored procedures for applications that use MySQL databases.

![https://github.com/victorluissantos/mysql](https://img.shields.io/badge/English-EN--us-%23FFFFFF?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAYAAAB24g05AAACLElEQVQokWWSS0hUYRiGD+jOjSs3bgI3YqLlwlSQhEDpRyiohRAE9SUaIV3GLoaouHAZtCoqKl1EkBCRplJ5wxZGu4pCTGrkMN7HM3Nm5vzn/888LYwkWjzb93nhfR3pWOAf2ucRmUZkEpEJRF4RDXZhb51nTRRxUfwUxYoolkThSMcC+XzEyKzFEDI8bTHG8Oi9ReuA+1OWMNRorQmCHLlcllwuSzbrMzr6ZC9gZNZyfDCkeSDkWF9I421NQ4/myE1NdSzAxmLYc4I9dRrb0oJtbCS6N8TXvQYzDE9btNYc7QvJZDI09GiSySTVsYDC7oBUKsXu7i47OztsbW0RRWfw/RSLi3M40j7P8LSlqXffXNu9Zy6MeTgX32FPnsQ2N2MbGjA1NZjKSqI7vXwQhSMyiTGGxtsaz/Oo7dZsbm5ScNVldXUV58T4X/PGxgbr6+skEgm+5SPGxp7jiEzw8K2l/oam5nrAoSsBBZd/4XRO4Rx/g3PwNba+HnP4MKaiAlNWRlhaih26xktROPH4D4wxZLNZfN8nnU7jeR7JZPIf89raGolEAtd1WV5eJvq1zN27AzjRYBf5j3NE/f3Yzk5sWxu2tRXb1IStq8NUVWHKywkPHECXlKCLiwmKijD9l3gqCmdp6TNaa7byeYJgf+NMJo3vp0inPVKpXTwvyfb2Bq5rcd2fxOMr+N1ncdwL/79rSRTfRfFFFJ9EMSOKcVG8EMUzUTwWxYM//AbKvRAid2HBnAAAAABJRU5ErkJggg==)
![https://github.com/victorluissantos/mysql/tree/main/pt](https://img.shields.io/badge/Brazil-PT--br-009c3b?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAYAAAB24g05AAACQElEQVQokVWSTUjTARyGf9ChQ0SH8rBCQ0ECo1bgJvkHP4ZriBObmoumOZm2TEaJ2USxqSFBBFaaZR+GMkplU8tASxRPHYQgog5CEdrJog/al27/8XToH+ThOb4PL7yviEvYQp0gNYI4BLELYhOkRBCLIIWCKIIYBNELckAQcQndi910LXbjW/DROd9J+6t2vHNeZtY8zK410vSsCfeUm/pgPc7xWhxPHVT5q5B0TdC12MXZaTeuSRfOgJPqiWqSSRuqeppE4iTxuAnzIzP5QwUogwqGfgO2URui0wS+BR+uSRe1gVrGVipJhmx4vV+wtCYwNcdpaFxj46eR4XdHye7P5shNPdZhK7JbEKkTOuY7cE6fIp6sJKme4M3yE96uJvi8Hibw+hvGixt4WiaIRg8SiWSSdSMLy0MLskMQqRHuLLeQTFagqmWoagnVV9cpaIvTcn+TsaUQLz/EuPJ4hUgkk3B4P6HQXi7PKogIInahda4V1/MyEmoxiYSZvoEZlEubFLVtoG+KMb4UJRgY0cI6cu7uwXjdiOwSRCqE5hfN2Pw2SkdKmfqYz+avXJzuH+jrYmSdiXL+wlfC6/vxv9eR1puGrkeHMvCvQangmfFgHbFiGbZgemDimD+bWOww0d/FRL4XEQ6nkXEtg9TeVHQ9OlJ8KeTcztEEFuHcVCP1wQacE04cYw7sfjvlo+UEPx1netWEechM4b1C8gbzyO1XMN4yYugzaIL/33VIe1e6IPvk70w7BdkuyDbRAlv5A8Wzhf9VbKBRAAAAAElFTkSuQmCC)
![https://github.com/victorluissantos/mysql/tree/main/es](https://img.shields.io/badge/Spanish-ES--es-%23C00B1D?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAYAAAB24g05AAAB70lEQVQokW3Sz0uTcQDH8c9dqMAudrDACqzhUvyB5pCGaDYxx5QpTLRAxUAqksQG/QX1J3SuY126RBB06tKl6GbTTMzmrD0/9+x5nu+7Q0IjPLyPr8/pIyQai/8rlAgkfAlXwpaoSvySqEgICYpFKBYxGxuY9XXM2hrxvfvEq6tEKytEi4uECwvUCwWCfJ5aLoc/MUH538AjzPw8plDAzM4ST00RZ7NE4+OEo6PU02mCwRS1vj78zk68RAJ/bIx9CRELYzYwpoAxsziHecpfc9ScDGE4Sr2eJggGqdV68f1OPO8yrnMRzx1mb08ojoUxDzFmBsuepvo4T3klT2XrKbZzrQFf+YvdCzjOOVx3qHHgAXGcw33/ispyjoNPn7HevuRgO30MPottn8Fxr7K7ezQQx3eJopsE1S9sPclykMvi/vzG763r+H4Sz7uE654/wi1Y1mkcp5edHaEwFFF0hzAc493HF5Q/ZPj+/Aav3zzjx2HqWGxZp7DtLkoloUAiWlqiPjxMfWiIYGCAWnc3fkcHXns7blsbTmsrdksLVnMz1ZMnqDY1YSWTlCTkS4S3blOfmyOYmSGYmqY2OYmfyeCPjOCl07ipFE5/P3ZPD1ZXF1YyiZVIsCmh495VkShL7EvsSexK7EhsS5QkNhv6A4qU1BeOkdglAAAAAElFTkSuQmCC)
![](https://img.shields.io/badge/MySQL-5.6-blue)
![https://tawk.to/chat/5afad6f35f7cdf4f05343d7e/default](https://img.shields.io/badge/Need%20help-tawk.to-%2350B648)


|  Nome da Função   |                 Parâmetros                   |               Exemplo de uso              |      Retorno      |
|------------------|----------------------------------------------|-------------------------------------------|-------------------------|
|   [`iniFCap()`](https://github.com/victorluissantos/mysql/blob/main/contents/Functions/iniFCap.sql)    |           	`VARCHAR(250)`                   |    `SELECT initCap('victor');`            |      `Victor`           |
|   [`iniCap()`](https://github.com/victorluissantos/mysql/blob/main/contents/Functions/initCap.sql)     |             `VARCHAR(250)`                   |    `SELECT initCap('victor luis');`       |      `Victor Luis`      |
|[`moneyFormat()`](https://github.com/victorluissantos/mysql/blob/main/contents/Functions/moneyFormat.sql) | `String(22)` `Decimal(22,2)`, `String(2)`    |    `SELECT moneyFormat(2020.12,'$');`     |      `$2.020,12`        |
|  [`shortName()`](https://github.com/victorluissantos/mysql/blob/main/contents/Functions/shortName.sql)  |                 `VARCHAR(250)`                   |  `SELECT shortName('Victor Luis Santos')` |      `Victor L. Santos`               |
|  [`pasTimer()`](https://github.com/victorluissantos/mysql/blob/main/contents/Functions/pasTimer.sql)  |                 `DateTime`                   |  `SELECT pasTimer('2020-12-21 18:30:15')` |      `1h`               |

|  Stored Procedures name   |                 Parameters                   |               Example of use              |      Result\Return      |
|------------------|----------------------------------------------|-------------------------------------------|-------------------------|
|   [`relocatedId()`](https://github.com/victorluissantos/mysql/blob/main/Stored-Procedures/relocatedId.sql)    |           	`VARCHAR(250)`                   |    `CALL relocatedId('users');`            | Antes: `SELECT MAX(id) FROM <your_table>` Return: 190<br>Depois: `SELECT MAX(id) FROM <your_table>` Return: 140 |

## How run
1. Você deve baixar a verao 5.6 do MySQL com Workbench, ambos disponíveis em:<br/>
[Download](https://dev.mysql.com/downloads/mysql/5.6.html)<br/>
Ou caso queira link alternativo:<br/>
[Download windows](https://dev.mysql.com/downloads/windows/installer/5.6.html)

## Acknowledgment
Eu fiz este "Repo" em comemoração a aprovação no conquista do teste de competência  em MySQL do Linkedin

[![connect-linkedin](https://user-images.githubusercontent.com/6771025/102895734-fe9afd80-4443-11eb-9174-cd257647c53a.jpg)](https://www.linkedin.com/in/victor-luis-santos/)
