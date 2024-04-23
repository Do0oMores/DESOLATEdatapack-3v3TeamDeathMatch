# 选择队伍的GUI

tellraw @a [{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"点击颜色来加入相应的队伍:","bold":true,"color":"white"},{"text":"\n"}]
tellraw @a {"text":"红队","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger red add 1"}}
tellraw @a {"text":"蓝队","bold":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger blue add 1"}}
tellraw @p [{"text":"\n"},{"text":"\n"},{"text":"点击 ","bold":true,"color":"white"},{"text":"此处","underlined":true,"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function teams:options/settings"}},{"text":" 来选择其他选项.","bold":true,"color":"white"},{"text":"\n"}]