scoreboard players set @s varA 100
scoreboard players operation @s Damage *= @s Resist
scoreboard players operation @s Damage /= @s varA
execute if entity @s[tag=JustGuard] run playsound minecraft:block.anvil.place player @s ~ ~ ~ 100 0.9
execute if entity @s[tag=JustStep] run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 100 1.75
execute as @s[scores={Damage=1..}] run scoreboard players operation @s Damage -= @s Defence
execute as @s[scores={Damage=1..}] run scoreboard players operation @s Damage *= @s Damage_Multiple
execute as @s[scores={Damage=1..}] run scoreboard players operation @s Damage /= @s varA
execute as @s[scores={Damage=1..}] run scoreboard players operation @s HP -= @s Damage
execute as @s[scores={Damage=1..}] at @s run tellraw @a[distance=..30] [{"selector":"@s"},{"text":":"},{"score":{"name":"@s","objective":"Damage"}},{"text":"ダメージ"}]
execute as @s if entity @s[scores={Damage=1..},type=!#system:undead] run effect give @s minecraft:instant_damage 1 32
execute as @s if entity @s[scores={Damage=1..},type=#system:undead] run effect give @s minecraft:instant_health 1 32
scoreboard players set @s Damage 0
scoreboard players set @s HitTime 0