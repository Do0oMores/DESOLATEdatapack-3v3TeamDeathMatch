team join red @a[scores={red=1..}]
tag @a[scores={red=1..}] add red
execute as @a[scores={red=1..}] run function desolate:bookgui/asredteamwaitgui
tellraw @a[scores={red=1..}] "[团队死斗]您已加入红队"
scoreboard players add redamount teamamount 1
scoreboard players add allamount teamamount 1
bossbar set redkillbossbar players @a[tag=red]
bossbar set bluekillbossbar players @a[tag=red]
