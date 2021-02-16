tag @s[tag=!mainaction] add check
tellraw @s[tag=check] "メインアクションを有効化しました"
tag @s[tag=!mainaction] add mainaction
tellraw @s[tag=!check] "メインアクションを無効化しました"
tag @s[tag=mainaction,tag=!check] remove mainaction
tag @s remove check