#检测玩家加入队伍
#启用red计分板权限
scoreboard players enable @a red
#检测队伍人数如果空余将玩家加入红队
execute as @a[scores={red=1..}] run function desolate:addteam/testredteamamount
#队伍人数大于等于3拒绝加入队伍
execute if score redamount teamamount matches 3.. run tellraw @a[scores={red=1..}] "该队伍已满无法加入"
#重置计分板防止重复加入
scoreboard players reset @a[scores={red=1..}] red

#蓝队
scoreboard players enable @a blue
execute as @a[scores={blue=1..}] run function desolate:addteam/testblueteamamount
execute if score blueamount teamamount matches 3.. run tellraw @a[scores={blue=1..}] "该队伍已满无法加入"
scoreboard players reset @a[scores={blue=1..}] blue

#玩家点击退出
scoreboard players enable @a inred
scoreboard players enable @a inblue

#退出队伍
execute as @a[scores={inred=1..}] run function desolate:exitteam/exitredteam
execute as @a[scores={inblue=1..}] run function desolate:exitteam/exitblueteam
scoreboard players reset @a[scores={inred=1..}] inred
scoreboard players reset @a[scores={inblue=1..}] inblue

#玩家死亡
tag @e[type=player] add die
execute as @a[tag=!die] run function desolate:testdie/playerdie
tag @a add die
tag @e[type=player] remove die

#达到击杀数
execute if score redkill kill matches 3.. run function desolate:endgame/redwin
execute if score bluekill kill matches 3.. run function desolate:endgame/bluewin

#开始游戏
execute if score allamount teamamount matches 2 run function desolate:startgame/start

#start计时器
execute if score starttime teamamount matches 1 run scoreboard players add time teamamount 1
execute if score time teamamount matches 20..22 run title @a[tag=ingame] title [{"text": "5","color": "red"}]
execute if score time teamamount matches 40..42 run title @a[tag=ingame] title [{"text": "4","color": "red"}]
execute if score time teamamount matches 60..62 run title @a[tag=ingame] title [{"text": "3","color": "red"}]
execute if score time teamamount matches 80..82 run title @a[tag=ingame] title [{"text": "2","color": "red"}]
execute if score time teamamount matches 100..102 run title @a[tag=ingame] title [{"text": "1","color": "red"}]
execute if score time teamamount matches 122.. run function desolate:startgame/begin
#end
execute if score endtime teamamount matches 1 run scoreboard players add time1 teamamount 1
execute if score time1 teamamount matches 20..22 run title @a[tag=ingame] title [{"text": "5","color": "red"}]
execute if score time1 teamamount matches 40..42 run title @a[tag=ingame] title [{"text": "4","color": "red"}]
execute if score time1 teamamount matches 60..62 run title @a[tag=ingame] title [{"text": "3","color": "red"}]
execute if score time1 teamamount matches 80..82 run title @a[tag=ingame] title [{"text": "2","color": "red"}]
execute if score time1 teamamount matches 100..102 run title @a[tag=ingame] title [{"text": "1","color": "red"}]
execute if score time1 teamamount matches 122.. run function desolate:endgame/end