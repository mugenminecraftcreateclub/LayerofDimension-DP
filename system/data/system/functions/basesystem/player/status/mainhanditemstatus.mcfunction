execute as @s at @s store result score @s varA run data get entity @s SelectedItem.tag.Status.HP
scoreboard players operation @s MaxHP += @s varA
execute as @s at @s store result score @s varA run data get entity @s SelectedItem.tag.Status.MP
scoreboard players operation @s MaxMP += @s varA
execute as @s at @s store result score @s varA run data get entity @s SelectedItem.tag.Status.Attack
scoreboard players operation @s Attack += @s varA
execute as @s at @s store result score @s varA run data get entity @s SelectedItem.tag.Status.AtkSpeed
scoreboard players operation @s AttackSpeed += @s varA
execute as @s at @s store result score @s varA run data get entity @s SelectedItem.tag.Status.Defence
scoreboard players operation @s Defence += @s varA
execute as @s at @s store result score @s varA run data get entity @s SelectedItem.tag.Status.Resist
scoreboard players operation @s Resist -= @s varA
execute as @s at @s store result score @s varA run data get entity @s SelectedItem.tag.Status.KnockbackResist
scoreboard players operation @s KnockbackResist += @s varA
execute as @s at @s store result score @s varA run data get entity @s SelectedItem.tag.Status.MovementSpeed
scoreboard players operation @s MovementSpeed += @s varA
execute as @s at @s store result score @s varA run data get entity @s SelectedItem.tag.Status.ArrowSpeed
scoreboard players operation @s ArrowSpeed += @s varA