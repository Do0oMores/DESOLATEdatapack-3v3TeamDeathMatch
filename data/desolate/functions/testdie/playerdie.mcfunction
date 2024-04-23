execute if entity @a[tag=!die,tag=red] run scoreboard players add bluekill kill 1
execute if entity @a[tag=!die,tag=blue] run scoreboard players add redkill kill 1
bossbar set redkillbossbar name [{"text": "红队击杀数:","color": "green"},{"score":{"name": "redkill","objective": "kill"},"color": "red"}]
bossbar set bluekillbossbar name [{"text": "蓝队击杀数:","color": "green"},{"score":{"name": "bluekill","objective": "kill"},"color": "red"}]
execute store result bossbar redkillbossbar value run scoreboard players get redkill kill
execute store result bossbar bluekillbossbar value run scoreboard players get bluekill kill
