execute if entity @s[advancements={system:damage/test=true},scores={DealtDamage=1..}] run scoreboard players add @s Attack 6
execute if entity @s[advancements={system:damage/test=true},scores={DealtDamage=1..}] at @e[nbt={HurtTime:10s}] run particle minecraft:block minecraft:iron_block ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a[distance=..10]
execute if entity @s[advancements={system:damage/test=true},scores={DealtDamage=1..}] run scoreboard players remove @s MP 3
tag @s add check
execute as @e[scores={HitID=1..,HitType=1,HitTime=0},tag=!swordbreak] if score @s HitID = @a[tag=check,limit=1] ID run scoreboard players remove @s AttackIaD 9
execute as @e[scores={HitID=1..,HitType=1,HitTime=0,AttackIaDT=..200},tag=!swordbreak] if score @s HitID = @a[tag=check,limit=1] ID run scoreboard players set @s AttackIaDT 200
execute as @e[scores={HitID=1..,HitType=1,HitTime=0},tag=!swordbreak] if score @s HitID = @a[tag=check,limit=1] ID run tag @s add swordbreak
tag @s remove check