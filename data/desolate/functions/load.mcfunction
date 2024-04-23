# 当执行/reload时
tellraw @p [{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"DESOLATE团队死斗数据包已重载完毕,请选择来开始:","bold": true}]
tellraw @p [{"text":"给予创造模式玩家一个书本GUI","color": "blue","italic": true,"clickEvent":{"action":"run_command","value":"/function desolate:bookgui/gui"},"hoverEvent":{"action":"show_text","contents":[{"text":"给予一个书本GUI","color":"white"}]}}]

#计分板对象
#red 红队统计
#blue 蓝队统计
#teamamount 队伍人数统计-redamount 红队人数-blueamount 蓝队人数-allamount 全部人数

# 创建队伍
team add red
team add blue
#设置队伍颜色
team modify blue color blue
team modify red color red
#添加触发器
scoreboard objectives add red trigger
scoreboard objectives add blue trigger
scoreboard objectives add teamamount trigger
scoreboard objectives add inred trigger
scoreboard objectives add inblue trigger
scoreboard objectives add kill trigger
scoreboard players set redamount teamamount 0
scoreboard players set blueamount teamamount 0
scoreboard players set allamount teamamount 0
scoreboard players set redkill kill 0
scoreboard players set bluekill kill 0
scoreboard players reset @a red
scoreboard players reset @a blue

#添加bossbar
bossbar remove redkillbossbar
bossbar remove bluekillbossbar
bossbar add redkillbossbar [{"text": "红队击杀数:","color": "green"},{"score":{"name": "redkill","objective": "kill"},"color": "red"}]
bossbar add bluekillbossbar [{"text": "蓝队击杀数:","color": "green"},{"score":{"name": "bluekill","objective": "kill"},"color": "red"}]
bossbar set redkillbossbar max 30
bossbar set bluekillbossbar max 30
bossbar set redkillbossbar color pink
bossbar set bluekillbossbar color pink

say "reloaded"

