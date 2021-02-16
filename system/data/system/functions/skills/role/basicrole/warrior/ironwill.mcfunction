scoreboard players set @s varA 100
scoreboard players operation @s varC = #Random Random
scoreboard players operation @s varC %= @s varA
execute if score @s varC matches 0..2 run scoreboard players set @s HP 1
execute if score @s varC matches 0..2 run playsound minecraft:item.totem.use player @s ~ ~ ~ 