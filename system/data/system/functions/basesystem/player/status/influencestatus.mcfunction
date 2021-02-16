scoreboard players operation @s varA = @a[sort=nearest,limit=1] MaxHP
scoreboard players operation @s varB = @a[sort=nearest,limit=1] HP
scoreboard players set @s varC 100
scoreboard players operation @s varD = @a[sort=nearest,limit=1] HP
scoreboard players operation @s varB *= @s varC
scoreboard players operation @s varB /= @s varA
scoreboard players operation @s varB -= @s varC
execute as @s[scores={varD=1..,varB=..-100}] at @s run scoreboard players set @s varB -99
execute as @s at @s store result entity @s ArmorItems[3].tag.AttributeModifiers[0].Amount double 0.01 run scoreboard players get @s varB

scoreboard players operation @s varA = @a[sort=nearest,limit=1] MovementSpeed
scoreboard players set @s varB 100
scoreboard players set @s varC 1000
scoreboard players operation @s varA *= @s varC
scoreboard players operation @s varA /= @s varB
scoreboard players operation @s varA -= @s varC
execute as @s at @s store result entity @s ArmorItems[3].tag.AttributeModifiers[2].Amount double 0.001 run scoreboard players get @s varA

scoreboard players operation @s varA = @a[sort=nearest,limit=1] KnockbackResist
scoreboard players set @s varB 100
scoreboard players operation @s varA -= @s varB
execute as @s at @s store result entity @s ArmorItems[3].tag.AttributeModifiers[1].Amount double 0.01 run scoreboard players get @s varA

#scoreboard players operation @s varA = @a[sort=nearest,limit=1] Attack
#execute as @s at @s store result entity @s ArmorItems[3].tag.AttributeModifiers[4].Amount double 1 run scoreboard players get @s varA

#scoreboard players operation @s varA = @a[sort=nearest,limit=1] AttackSpeed
#scoreboard players set @s varB 100
#scoreboard players operation @s varA -= @s varB
#execute as @s at @s store result entity @s ArmorItems[3].tag.AttributeModifiers[6].Amount double 0.01 run scoreboard players get @s varA

execute as @s at @s run loot replace entity @a[sort=nearest,limit=1] armor.head loot system:test

execute as @s at @s unless entity @a[sort=nearest,limit=1,scores={VelX=0,VelY=0,VelZ=0},distance=..1] run function system:basesystem/player/status/setvelocity

tag @s remove influencestatus
kill @s