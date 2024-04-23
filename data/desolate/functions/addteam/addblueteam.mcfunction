team join blue @a[scores={blue=1..}]
tag @a[scores={blue=1..}] add blue
execute as @a[scores={blue=1..}] run function desolate:bookgui/asblueteamwaitgui
tellraw @a[scores={blue=1..}] "[团队死斗]您已加入蓝队"
scoreboard players add blueamount teamamount 1
scoreboard players add allamount teamamount 1
bossbar set bluekillbossbar players @a[tag=blue]