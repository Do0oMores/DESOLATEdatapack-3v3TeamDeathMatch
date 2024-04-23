title @a[tag=red] title [{"text": "已达到人数准备开始游戏","color": "green"}]
title @a[tag=red] subtitle [{"text": "目标:率先达到30击杀","color": "pink"}]
title @a[tag=blue] title [{"text": "已达到人数准备开始游戏","color": "green"}]
title @a[tag=blue] subtitle [{"text": "目标:率先达到30击杀","color": "pink"}]
function desolate:hidenametag/yes
spawnpoint @a[tag=red] -1001 5 -587
spawnpoint @a[tag=blue] -1037 5 -624
tp @a[tag=red] -1001 5 -587
tp @a[tag=blue] -1037 5 -624
scoreboard players set allamount teamamount -1
scoreboard players set starttime teamamount 1
tag @a[tag=red] add ingame
tag @a[tag=blue] add ingame
effect give @a[tag=ingame] slowness 999 255 true
effect give @a[tag=ingame] blindness 999 255 true
