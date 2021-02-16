execute if entity @s[scores={WeaponType=2}] run scoreboard players add @s Defence 3
execute if entity @s[scores={GuardTime=..3,Damage=1..}] run tag @s add parrying
execute if entity @s[tag=parrying,scores={DealtDamage=1..}] run scoreboard players add @s Attack 9
execute if entity @s[tag=parrying] run tag @s add check
execute if entity @s[scores={DealtDamage=1..}] run tag @s remove parrying
execute if entity @s[tag=check] run tag @s remove check