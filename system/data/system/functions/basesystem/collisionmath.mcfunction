summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Silent:true,Marker:1b,Motion:[0.0d,0.0d,0.d],Tags:["collision"]}
tag @s add collision
execute as @e[type=armor_stand,tag=collision,limit=1] store result entity @s Pos[0] double 0.001 run scoreboard players get @a[tag=collision,sort=nearest,limit=1] PrevPosX
execute as @e[type=armor_stand,tag=collision,limit=1] store result entity @s Pos[1] double 0.001 run scoreboard players get @a[tag=collision,sort=nearest,limit=1] PrevPosY
execute as @e[type=armor_stand,tag=collision,limit=1] store result entity @s Pos[2] double 0.001 run scoreboard players get @a[tag=collision,sort=nearest,limit=1] PrevPosZ
execute as @e[type=armor_stand,tag=collision,limit=1] at @s facing entity @a[tag=collision,sort=nearest,limit=1] eyes run tp ^ ^ ^1
tag @s remove collision
kill @e[type=armor_stand,tag=collision,limit=1]