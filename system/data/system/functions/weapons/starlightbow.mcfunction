tag @e[type=player,nbt={SelectedItem:{tag:{UniqItem:{UniqItem:1d}}}}] add StarlightBow

#execute as @a[tag=StarlightBow] at @e[type=arrow,scores={Time=..3},limit=10,sort=nearest,distance=..2] run tag @e[type=arrow,scores={Time=..3},limit=1,sort=nearest] add StarlightArrow
execute as @a[tag=StarlightBow] at @s run tag @e[type=arrow,scores={Time=..1},limit=1,sort=nearest,distance=..13] add StarlightArrow

execute as @e[type=arrow,tag=StarlightArrow,tag=!Flag2] at @s run particle minecraft:end_rod ~ ~ ~ 0.25 0.25 0.25 0.01 1 force @a
execute as @e[type=arrow,tag=StarlightArrow,tag=Flag2,scores={Time=20..}] at @s run particle minecraft:end_rod ~ ~ ~ 0.25 0.25 0.25 1 1 force @a

execute as @e[tag=StarlightArrow,scores={Time=3..}] run tag @s add Flag
execute as @e[tag=StarlightArrow,tag=Flag2,scores={Time=3}] at @s store result entity @s damage double 1 run data get entity @e[type=arrow,tag=StarlightArrow,tag=!Flag2,sort=nearest,limit=1] damage

execute as @e[tag=StarlightArrow,tag=Flag2,scores={Time=19}] at @s store result score @s PrevPosX run data get entity @s Pos[0] 100
execute as @e[tag=StarlightArrow,tag=Flag2,scores={Time=19}] at @s store result score @s PrevPosY run data get entity @s Pos[1] 100
execute as @e[tag=StarlightArrow,tag=Flag2,scores={Time=19}] at @s store result score @s PrevPosZ run data get entity @s Pos[2] 100

tag @e[tag=StarlightArrow,tag=Flag2,scores={Time=20}] add startsearch
execute as @e[tag=startsearch] at @s as @e[tag=!StarlightArrow,sort=nearest,limit=1,type=#system:mobs] at @s run function system:basesystem/searchprocess
tag @e[tag=startsearch] remove startsearch

execute as @e[tag=StarlightArrow,tag=Flag2,scores={Time=20}] at @s facing entity @e[sort=nearest,limit=1,tag=searchcompleate] feet run tp @s ^ ^ ^1 ~90 ~180
#execute as @e[tag=StarlightArrow,tag=Flag2,scores={Time=20}] at @s run particle minecraft:end_rod ~ ~ ~ 0.25 0.25 0.25 3 25 force @a 

execute as @e[tag=StarlightArrow,tag=Flag2,scores={Time=21}] at @s store result score @s PosX run data get entity @s Pos[0] 100
execute as @e[tag=StarlightArrow,tag=Flag2,scores={Time=21}] at @s store result score @s PosY run data get entity @s Pos[1] 100
execute as @e[tag=StarlightArrow,tag=Flag2,scores={Time=21}] at @s store result score @s PosZ run data get entity @s Pos[2] 100


execute as @e[tag=StarlightArrow,tag=Flag2,scores={Time=22}] at @s run scoreboard players operation @s varA = @s PosX
execute as @e[tag=StarlightArrow,tag=Flag2,scores={Time=22}] at @s run scoreboard players operation @s varA -= @s PrevPosX
execute as @e[type=arrow,tag=StarlightArrow,tag=Flag2,scores={Time=22}] at @s store result entity @s Motion[0] double 0.06 run scoreboard players get @s varA

execute as @e[tag=StarlightArrow,tag=Flag2,scores={Time=22}] at @s run scoreboard players operation @s varB = @s PosY
execute as @e[tag=StarlightArrow,tag=Flag2,scores={Time=22}] at @s run scoreboard players operation @s varB -= @s PrevPosY
execute as @e[type=arrow,tag=StarlightArrow,tag=Flag2,scores={Time=22}] at @s store result entity @s Motion[1] double 0.06 run scoreboard players get @s varB

execute as @e[tag=StarlightArrow,tag=Flag2,scores={Time=22}] at @s run scoreboard players operation @s varC = @s PosZ
execute as @e[tag=StarlightArrow,tag=Flag2,scores={Time=22}] at @s run scoreboard players operation @s varC -= @s PrevPosZ
execute as @e[type=arrow,tag=StarlightArrow,tag=Flag2,scores={Time=22}] at @s store result entity @s Motion[2] double 0.06 run scoreboard players get @s varC

execute as @e[type=arrow,tag=StarlightArrow,tag=!Flag2,scores={Time=..120}] at @s run summon minecraft:arrow ~ ~ ~ {NoGravity:1b,Glowing:1b,pickup:2b,crit:1b,Color:-1,Tags:["StarlightArrow","Flag2"],Potion:"minecraft:water"}

execute as @e[type=arrow,tag=StarlightArrow,tag=!Flag2] at @s run scoreboard players operation @e[tag=StarlightArrow,tag=Flag2,scores={Time=..1},sort=nearest,limit=1] team = @s team
tag @e remove StarlightBow

kill @e[type=arrow,scores={Time=120..},tag=StarlightArrow]
kill @e[type=arrow,scores={varA=0,varB=0,varC=0,Time=22},tag=StarlightArrow,tag=Flag2]