team leave @a[scores={inblue=1..}]
tag @a[scores={inblue=1..}] remove blue
tellraw @a[scores={inblue=1..}] "[团队死斗]您已退出蓝队"
execute as @a[scores={inblue=1..}] run function desolate:bookgui/exitbluegui
scoreboard players remove blueamount teamamount 1
scoreboard players remove allamount teamamount 1