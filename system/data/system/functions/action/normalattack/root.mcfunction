function system:basesystem/player/onattackskill/call
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Silent:true,Marker:0b,Motion:[0.0d,0.0d,0.d],Tags:["normalattack"],ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1,Params:{WeaponType:0,AttackTick:0,Range:0},RootID:-1,ParentID:-1}}]}
execute store result entity @e[type=minecraft:armor_stand,tag=normalattack,limit=1,dx=0,dy=0,dz=0,sort=nearest] ArmorItems[3].tag.Params.WeaponType int 1 run scoreboard players get @s WeaponType
execute store result score @e[type=minecraft:armor_stand,tag=normalattack,limit=1,dx=0,dy=0,dz=0,sort=nearest] ParentID run scoreboard players get @s ID
execute store result score @e[type=minecraft:armor_stand,tag=normalattack,limit=1,dx=0,dy=0,dz=0,sort=nearest] Attack run scoreboard players get @s Attack