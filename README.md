MySQL
======

![https://github.com/victorluissantos/mysql/tree/main/pt](https://img.shields.io/badge/Brazil-PT--br-009c3b?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAYAAAB24g05AAACQElEQVQokVWSTUjTARyGf9ChQ0SH8rBCQ0ECo1bgJvkHP4ZriBObmoumOZm2TEaJ2USxqSFBBFaaZR+GMkplU8tASxRPHYQgog5CEdrJog/al27/8XToH+ThOb4PL7yviEvYQp0gNYI4BLELYhOkRBCLIIWCKIIYBNELckAQcQndi910LXbjW/DROd9J+6t2vHNeZtY8zK410vSsCfeUm/pgPc7xWhxPHVT5q5B0TdC12MXZaTeuSRfOgJPqiWqSSRuqeppE4iTxuAnzIzP5QwUogwqGfgO2URui0wS+BR+uSRe1gVrGVipJhmx4vV+wtCYwNcdpaFxj46eR4XdHye7P5shNPdZhK7JbEKkTOuY7cE6fIp6sJKme4M3yE96uJvi8Hibw+hvGixt4WiaIRg8SiWSSdSMLy0MLskMQqRHuLLeQTFagqmWoagnVV9cpaIvTcn+TsaUQLz/EuPJ4hUgkk3B4P6HQXi7PKogIInahda4V1/MyEmoxiYSZvoEZlEubFLVtoG+KMb4UJRgY0cI6cu7uwXjdiOwSRCqE5hfN2Pw2SkdKmfqYz+avXJzuH+jrYmSdiXL+wlfC6/vxv9eR1puGrkeHMvCvQangmfFgHbFiGbZgemDimD+bWOww0d/FRL4XEQ6nkXEtg9TeVHQ9OlJ8KeTcztEEFuHcVCP1wQacE04cYw7sfjvlo+UEPx1netWEechM4b1C8gbzyO1XMN4yYugzaIL/33VIe1e6IPvk70w7BdkuyDbRAlv5A8Wzhf9VbKBRAAAAAElFTkSuQmCC)
![https://github.com/victorluissantos/mysql/tree/main/es](https://img.shields.io/badge/Spanish-ES--es-%23C00B1D?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAYAAAB24g05AAAB70lEQVQokW3Sz0uTcQDH8c9dqMAudrDACqzhUvyB5pCGaDYxx5QpTLRAxUAqksQG/QX1J3SuY126RBB06tKl6GbTTMzmrD0/9+x5nu+7Q0IjPLyPr8/pIyQai/8rlAgkfAlXwpaoSvySqEgICYpFKBYxGxuY9XXM2hrxvfvEq6tEKytEi4uECwvUCwWCfJ5aLoc/MUH538AjzPw8plDAzM4ST00RZ7NE4+OEo6PU02mCwRS1vj78zk68RAJ/bIx9CRELYzYwpoAxsziHecpfc9ScDGE4Sr2eJggGqdV68f1OPO8yrnMRzx1mb08ojoUxDzFmBsuepvo4T3klT2XrKbZzrQFf+YvdCzjOOVx3qHHgAXGcw33/ispyjoNPn7HevuRgO30MPottn8Fxr7K7ezQQx3eJopsE1S9sPclykMvi/vzG763r+H4Sz7uE654/wi1Y1mkcp5edHaEwFFF0hzAc493HF5Q/ZPj+/Aav3zzjx2HqWGxZp7DtLkoloUAiWlqiPjxMfWiIYGCAWnc3fkcHXns7blsbTmsrdksLVnMz1ZMnqDY1YSWTlCTkS4S3blOfmyOYmSGYmqY2OYmfyeCPjOCl07ipFE5/P3ZPD1ZXF1YyiZVIsCmh495VkShL7EvsSexK7EhsS5QkNhv6A4qU1BeOkdglAAAAAElFTkSuQmCC)
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
