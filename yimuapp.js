/*******************************
  made by ITMan_CHINA
一木
脚本名称:一木
使用声明：️此脚本仅供学习与交流，
        请勿转载与贩卖！️️️
*******************************
[rewrite_local]
^http[s]?:\/\/yimuapp.com\/bookkeeping\/user\/getUser\/.+.+$ url script-response-body https://raw.githubusercontent.com/ITManCHINA/itmanchina.github.io/master/yimuapp.js
[mitm] 
hostname = *.yimuapp.*

*******************************
Surge

[Script]
^http[s]?:\/\/yimuapp.com\/bookkeeping\/user\/getUser\/.+.+$ requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/ITManCHINA/itmanchina.github.io/master/yimuapp.js

[MITM]
hostname = *.yimuapp.*

*******************************/
var obj = JSON.parse($response.body);
    obj.vipType= 1;
obj.vipTime= 9999999999999;
    $done({body: JSON.stringify(obj)});
