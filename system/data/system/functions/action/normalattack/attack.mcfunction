execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{Params:{WeaponType:1}}}]}] run function system:action/normalattack/type/sword
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{Params:{WeaponType:2}}}]}] run function system:action/normalattack/type/greatsword
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{Params:{WeaponType:3}}}]}] run function system:action/normalattack/type/rance
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{Params:{WeaponType:4}}}]}] run function system:action/normalattack/type/axe
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{Params:{WeaponType:5}}}]}] run function system:action/normalattack/type/fist
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{Params:{WeaponType:6}}}]}] run function system:action/normalattack/type/dagger
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{Params:{WeaponType:7}}}]}] run function system:action/normalattack/type/staff
execute as @e[scores={Damage=1..}] if score @s HitID = @p ID run scoreboard players set @s HitType 1