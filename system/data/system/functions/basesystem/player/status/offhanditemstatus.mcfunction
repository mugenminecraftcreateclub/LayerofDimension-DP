scoreboard players set @s varB 2
execute as @s at @s store result score @s varA run data get entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] HandItems[1].tag.Status.HP
scoreboard players operation @s varA /= @s varB
scoreboard players operation @s MaxHP += @s varA
execute as @s at @s store result score @s varA run data get entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] HandItems[1].tag.Status.MP
scoreboard players operation @s varA /= @s varB
scoreboard players operation @s MaxMP += @s varA
execute as @s at @s store result score @s varA run data get entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] HandItems[1].tag.Status.Attack
scoreboard players operation @s varA /= @s varB
scoreboard players operation @s Attack += @s varA
execute as @s at @s store result score @s varA run data get entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] HandItems[1].tag.Status.AtkSpeed
scoreboard players operation @s varA /= @s varB
scoreboard players operation @s AttackSpeed += @s varA
execute as @s at @s store result score @s varA run data get entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] HandItems[1].tag.Status.Defence
scoreboard players operation @s varA /= @s varB
scoreboard players operation @s Defence += @s varA
execute as @s at @s store result score @s varA run data get entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] HandItems[1].tag.Status.Resist
scoreboard players operation @s varA /= @s varB
scoreboard players operation @s Resist -= @s varA
execute as @s at @s store result score @s varA run data get entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] HandItems[1].tag.Status.KnockbackResist
scoreboard players operation @s varA /= @s varB
scoreboard players operation @s KnockbackResist += @s varA
execute as @s at @s store result score @s varA run data get entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] HandItems[1].tag.Status.MovementSpeed
scoreboard players operation @s varA /= @s varB
scoreboard players operation @s MovementSpeed += @s varA
execute as @s at @s store result score @s varA run data get entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] HandItems[1].tag.Status.ArrowSpeed
scoreboard players operation @s varA /= @s varB
scoreboard players operation @s ArrowSpeed += @s varA