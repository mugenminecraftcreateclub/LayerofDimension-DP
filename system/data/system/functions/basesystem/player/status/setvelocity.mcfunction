execute as @a[tag=setvelocity,limit=1,scores={VelX=0,VelY=0,VelZ=0}] at @s run tp @s @s
tag @a[sort=nearest,limit=1] add setvelocity
#effect give @p[tag=setvelocity,limit=1] minecraft:levitation 1 255 true
#effect give @p[tag=setvelocity,limit=1] minecraft:slow_falling 1 1 true
execute as @s at @s store result score @s PrevPosX run data get entity @s Pos[0] 10000
execute as @s at @s store result score @s PrevPosY run data get entity @s Pos[1] 10000
execute as @s at @s store result score @s PrevPosZ run data get entity @s Pos[2] 10000
scoreboard players operation @s PrevPosX += @a[tag=setvelocity,limit=1] VelX
scoreboard players operation @s PrevPosY += @a[tag=setvelocity,limit=1] VelY
scoreboard players operation @s PrevPosZ += @a[tag=setvelocity,limit=1] VelZ
execute as @s at @s store result entity @s Pos[0] double 0.0001 run scoreboard players get @s PrevPosX
execute as @s at @s store result entity @s Pos[1] double 0.0001 run scoreboard players get @s PrevPosY
execute as @s at @s store result entity @s Pos[2] double 0.0001 run scoreboard players get @s PrevPosZ
execute as @s positioned as @a[tag=setvelocity,limit=1] facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute as @s at @s unless entity @p[tag=setvelocity,limit=1,scores={VelX=-100..100,VelY=-100..100,VelZ=-100..100}] run function system:basesystem/player/status/collisioncheck
execute as @s at @s unless entity @p[tag=setvelocity,limit=1,scores={VelX=..0}] unless score @s PrevPosX <= @s PosX run tag @s add check
execute as @s at @s unless entity @p[tag=setvelocity,limit=1,scores={VelY=..0}] unless score @s PrevPosY <= @s PosY run tag @s add check
execute as @s at @s unless entity @p[tag=setvelocity,limit=1,scores={VelZ=..0}] unless score @s PrevPosZ <= @s PosZ run tag @s add check
execute as @s at @s unless entity @p[tag=setvelocity,limit=1,scores={VelX=0..}] unless score @s PrevPosX >= @s PosX run tag @s add check
execute as @s at @s unless entity @p[tag=setvelocity,limit=1,scores={VelY=0..}] unless score @s PrevPosY >= @s PosY run tag @s add check
execute as @s at @s unless entity @p[tag=setvelocity,limit=1,scores={VelZ=0..}] unless score @s PrevPosZ >= @s PosZ run tag @s add check
execute as @s at @s unless entity @s[tag=check] store result entity @s Pos[0] double 0.0001 run scoreboard players get @s PrevPosX
execute as @s at @s unless entity @s[tag=check] store result entity @s Pos[1] double 0.0001 run scoreboard players get @s PrevPosY
execute as @s at @s unless entity @s[tag=check] store result entity @s Pos[2] double 0.0001 run scoreboard players get @s PrevPosZ
execute as @a[tag=setvelocity,limit=1] at @s positioned as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] unless entity @s[scores={VelX=-100..100,VelY=-100..100,VelZ=-100..100}] run tp @s ~ ~ ~ ~ ~
execute as @s at @s if entity @s[tag=check] run scoreboard players set @a[tag=setvelocity,limit=1] VelX 0
execute as @s at @s if entity @s[tag=check] run scoreboard players set @a[tag=setvelocity,limit=1] VelY 0
execute as @s at @s if entity @s[tag=check] run scoreboard players set @a[tag=setvelocity,limit=1] VelZ 0
tag @s remove check
scoreboard players set @s varA 8000
scoreboard players set @s varB 10000
scoreboard players operation @a[sort=nearest,limit=1] VelY *= @s varA
scoreboard players operation @a[sort=nearest,limit=1] VelY /= @s varB
execute as @s at @s if block ~ ~-1 ~ air run scoreboard players set @s varA 9500
scoreboard players operation @a[sort=nearest,limit=1] VelX *= @s varA
scoreboard players operation @a[sort=nearest,limit=1] VelX /= @s varB
scoreboard players operation @a[sort=nearest,limit=1] VelZ *= @s varA
scoreboard players operation @a[sort=nearest,limit=1] VelZ /= @s varB
execute as @s unless block ~ ~-1 ~ air run scoreboard players set @a[sort=nearest,limit=1,scores={VelY=..0}] VelY 0
#execute as @p[tag=setvelocity,limit=1] at @s if entity @s[scores={VelY=-1000..1000}] run effect clear @s minecraft:levitation
#execute as @p[tag=setvelocity,limit=1] at @s if entity @s[scores={VelY=-1000..1000}] run effect clear @s minecraft:slow_falling
tag @a[tag=setvelocity] remove setvelocity