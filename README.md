# MySQL



| The function name   |                 Paramters                    |               Example of use              |      Result\Return      |
|---------------------|----------------------------------------------|-------------------------------------------|-------------------------|
|      `iniFCap()`    |                 `String`                     |    `SELECT initCap('victor');`            |      `Victor`           |
|      `iniCap()`     |                 `String`                     |    `SELECT initCap('victor luis');`       |      `Victor Luis`      |
|  `moneyFormat()`    | `String(22)` `Decimal(22,2)`, `String(2)`    |    `SELECT moneyFormat(2020.12,'$');`     |      `$2.020,12`        |
|     `pasTimer()`    |                 `DateTime`                   |  `SELECT pasTimer('2020-12-21 18:30:15')` |      `1h`               |
