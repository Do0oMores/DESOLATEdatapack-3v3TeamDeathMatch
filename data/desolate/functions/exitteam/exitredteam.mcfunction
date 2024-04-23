team leave @a[scores={inred=1..}]
tag @a[scores={inred=1..}] remove red
tellraw @a[scores={inred=1..}] "[团队死斗]您已退出红队"
execute as @a[scores={inred=1..}] run function desolate:bookgui/exitredgui
scoreboard players remove redamount teamamount 1
scoreboard players remove allamount teamamount 1