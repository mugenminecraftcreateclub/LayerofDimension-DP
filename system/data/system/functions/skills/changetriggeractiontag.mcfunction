tag @s[tag=!triggeraction] add check
tellraw @s[tag=check] "トリガーアクションを有効化しました"
tag @s[tag=!triggeraction] add triggeraction
tellraw @s[tag=!check] "トリガーアクションを無効化しました"
tag @s[tag=triggeraction,tag=!check] remove triggeraction
tag @s remove check