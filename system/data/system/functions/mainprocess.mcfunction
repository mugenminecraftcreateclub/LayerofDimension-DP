#> system:mainprocess
#
# システム基幹部分。tickfunction
# @public

function system:basesystem/time
function system:basesystem/random
effect give @e minecraft:resistance 10 4 true
tag @e remove searchcompleate
execute as @e[type=#system:mobs] if entity @s[scores={Damage=..0,HitTime=1..}] run scoreboard players set @s HitID 0
execute as @e[type=#system:mobs] if entity @s[scores={Damage=..0,HitTime=1..}] run scoreboard players set @s HitType 0
execute as @e[tag=!setid] at @s run function system:setid

execute as @e[type=minecraft:arrow,scores={Time=..1}] as @s run data merge entity @s {PierceLevel:99b,Color:-1}
execute as @e[type=minecraft:arrow,scores={Time=..1}] at @s positioned ~ ~ ~ run function system:basesystem/player/arrowprocess

execute as @e[tag=!finishsetup,type=#system:mobs,tag=!System] at @s run function system:setup_1
execute as @e[type=#system:mobs,tag=!System,scores={HateTime=0}] run scoreboard players set @s Hate 0
execute as @e[type=#system:mobs,type=!player,tag=!System] at @s run function system:basesystem/mob/mobfirstprocessing
execute as @a at @s run function system:basesystem/player/playerfirstprocessing
execute as @e[type=minecraft:arrow,nbt={PierceLevel:0b}] as @s run kill @s
team join NoCollision @e[team=!NoCollision,type=player]