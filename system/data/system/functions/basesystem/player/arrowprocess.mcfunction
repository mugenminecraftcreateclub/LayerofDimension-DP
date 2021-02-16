execute as @s[tag=!setdamage] at @s store result entity @s damage double 1 run scoreboard players get @e[type=#system:mobs,tag=!DamageProcess,tag=!sliding,sort=nearest,limit=1] Attack
execute as @s[tag=!setdamage] at @s store result score @s team run scoreboard players get @e[type=#system:mobs,tag=!DamageProcess,tag=!sliding,sort=nearest,limit=1] team
execute as @s[tag=!setdamage] at @s store result score @s ParentID run scoreboard players get @e[type=#system:mobs,tag=!DamageProcess,tag=!sliding,sort=nearest,limit=1] ID

execute as @s[tag=!setdamage] at @s store result score @s varA run data get entity @s Motion[0] 1000
execute as @s[tag=!setdamage] at @s run scoreboard players operation @s varA *= @e[type=#system:mobs,tag=!DamageProcess,tag=!sliding,sort=nearest,limit=1] ArrowSpeed
execute as @s[tag=!setdamage] at @s store result entity @s Motion[0] double 0.00001 run scoreboard players get @s varA

execute as @s[tag=!setdamage] at @s store result score @s varA run data get entity @s Motion[1] 1000
execute as @s[tag=!setdamage] at @s run scoreboard players operation @s varA *= @e[type=#system:mobs,tag=!DamageProcess,tag=!sliding,sort=nearest,limit=1] ArrowSpeed
execute as @s[tag=!setdamage] at @s store result entity @s Motion[1] double 0.00001 run scoreboard players get @s varA

execute as @s[tag=!setdamage] at @s store result score @s varA run data get entity @s Motion[2] 1000
execute as @s[tag=!setdamage] at @s run scoreboard players operation @s varA *= @e[type=#system:mobs,tag=!DamageProcess,tag=!sliding,sort=nearest,limit=1] ArrowSpeed
execute as @s[tag=!setdamage] at @s store result entity @s Motion[2] double 0.00001 run scoreboard players get @s varA

execute as @s[tag=!setdamage] at @s run tag @s add setdamage