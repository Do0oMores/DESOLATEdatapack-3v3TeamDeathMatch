#加入红队进行等待的玩家GUI

replaceitem entity @a[tag=red] hotbar.0 written_book{pages:['["",{"text":" DESOLATE团队死斗","bold":true,"color":"dark_blue"},{"text":"\\n","color":"reset","bold":true},{"text":"您已加入红队","bold":true,"color":"dark_red"},{"text":"\\n","color":"reset"},{"text":"-------------------","color":"black"},{"text":"\\n","color":"reset"},{"text":"       1. [","color":"black"},{"text":"退出","color":"red","clickEvent":{"action":"run_command","value":"/trigger inred set 1"},"hoverEvent":{"action":"show_text","contents":"退出等待"}},{"text":"]\\n       2. [","color":"black"},{"text":"游戏总人数：","color":"blue"},{"score":{"objective":"teamamount","name":"allamount"},"color": "green"},{"text": "/","color": "black"},{"text": "6","color": "red"},{"text": "]"},{"text":"\\n","color":"reset"},{"text": "当前红队人数：","color": "black"},{"score":{"objective":"teamamount","name":"redamount"},"color": "green"},{"text": "/","color": "black"},{"text": "3","color": "red"},{"text":"\\n","color":"reset"},{"text":"-------------------","color":"black"},{"text":"\\n","color":"reset"},{"text": "\\n"},{"text": "3v3团队死斗,人数足够时自动开始"},{"text": "\\n"},{"text": "率先拿到30击杀的队伍将获得胜利"}]'],title:"DESOLATE团队死斗GUI",author:DESOLATEbyMores}