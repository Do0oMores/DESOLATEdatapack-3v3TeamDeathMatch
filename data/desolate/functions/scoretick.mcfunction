scoreboard players enable @a red
scoreboard players enable @a blue
execute as @a[scores={red=1..}] run function desolate:addteam/testredteamamount
execute if score redamount teamamount matches 3.. run title @a[scores={red=1..}] actionbar "该队伍已满无法加入"
execute as @a[scores={blue=1..}] run function desolate:addteam/testblueteamamount
execute if score blueamount teamamount matches 3.. run title @a[scores={blue=1..}] actionbar "该队伍已满无法加入"
scoreboard players reset @a[scores={red=1..}] red
scoreboard players reset @a[scores={blue=1..}] blue