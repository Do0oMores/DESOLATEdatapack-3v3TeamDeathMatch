title @a[tag=blue] title [{"text": "WIN","color": "green"}]
title @a[tag=blue] subtitle [{"text": "已达到击杀数","color": "light_purple"}]
title @a[tag=red] title [{"text": "FAIL","color": "red"}]
title @a[tag=red] subtitle [{"text": "下次再赢回来","color": "material_redstone"}]

#移除bossbar
bossbar remove redkillbossbar
bossbar remove bluekillbossbar

clear @a[tag=red]
clear @a[tag=blue]

tag @a[tag=red] remove red
tag @a[tag=blue] remove blue
scoreboard players set redamount teamamount 0
scoreboard players set blueamount teamamount 0
scoreboard players set allamount teamamount 0
scoreboard players set redkill kill 0
scoreboard players set bluekill kill 0
scoreboard players set endtime teamamount 1
effect give @a[tag=ingame] slowness 999 255 true
team remove red
team remove blue