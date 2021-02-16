#> system:basesystem/player/playerfirstprocessing
#
# playerが必ず行う処理の幹部分
# @within system:mainprocess

#ステータス表示
execute as @s[gamemode=adventure] at @s run title @s actionbar [{"text":" CL:"},{"score":{"name":"@s","objective":"CL"}},{"text":" HP:"},{"score":{"name":"@s","objective":"HP"},"color":"white"},{"text":"/"},{"score":{"name":"@s","objective":"MaxHP"},"color":"white"},{"text":" MP:"},{"score":{"name":"@s","objective":"MP"}},{"text":"/"},{"score":{"name":"@s","objective":"MaxMP"},"color":"white"},{"text":" 満腹度:"},{"score":{"name":"@s","objective":"Saturation"}},{"text":" ヘイト:"},{"score":{"name":"@s","objective":"Hate"}},{"text":" XFacing:"},{"score":{"name":"@s","objective":"XFacing"}},{"text":" ZFacing:"},{"score":{"name":"@s","objective":"ZFacing"}}]

#ステータス初期化
execute as @s at @s run function system:basesystem/player/tickfirstplayersetup

#summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Silent:true,Marker:1b,Motion:[0.0d,0.0d,0.0d]}

#ステ確認用アマスタ召喚
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Silent:true,Marker:1b,Motion:[0.0d,0.0d,0.d],Tags:["influencestatus"],ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.maxHealth",Amount:0,Operation:1,UUID:[I;271828182,845904523,-801444735,-490123578],Slot:"head"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockbackResistance",Amount:0,Operation:0,UUID:[I;1415926535,979323846,-643383279,-28841971],Slot:"head"},{AttributeName:"generic.movement_speed",Name:"generic.movementSpeed",Amount:0,Operation:1,UUID:[I;939937510,820974944,-923078164,-628620899],Slot:"head"},{AttributeName:"generic.luck",Name:"generic.luck",Amount:0,Operation:1,UUID:[I;628034825,421170679,-214808651,-282306647],Slot:"head"},{AttributeName:"generic.attack_damage",Name:"generic.attackDamage",Amount:0,Operation:0,UUID:[I;938446095,58223172,-359408128,-811174502],Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;410270193,521105559,-446229489,-493038196],Slot:"head"},{AttributeName:"generic.attack_speed",Name:"generic.attackSpeed",Amount:0,Operation:1,UUID:[I;428810975,659334461,-847564823,-786783165],Slot:"head"}]}}]}

#LevelUpBonus
scoreboard players operation @s varA = @s CL
scoreboard players remove @s varA 1
scoreboard players operation @s MovementSpeed += @s varA
scoreboard players operation @s Attack += @s varA
scoreboard players operation @s Defence += @s varA
scoreboard players operation @s HPRegenerationV += @s varA
scoreboard players operation @s MPRegenerationV += @s varA
scoreboard players set @s varB 5
scoreboard players operation @s varA *= @s varB
scoreboard players operation @s MaxHP += @s varA
scoreboard players operation @s MaxMP += @s varA
#CL50以上補正
execute if score @s CL matches 50.. run function system:basesystem/player/lvcorrection/lv50
#CL150以上補正
execute if score @s CL matches 150.. run function system:basesystem/player/lvcorrection/lv150

#向きに対する移動方向検出
execute as @s at @s run function system:basesystem/player/facing

#向いてる先のEntity検出
tag @s add Watcher
execute positioned ^ ^ ^32.1 as @e[type=#system:mobs,distance=..32,tag=!DamageProcess,tag=!sliding] positioned as @s positioned ^ ^ ^1000 facing entity @a[tag=Watcher,limit=1] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] as @e[dx=0,dy=0,dz=0,tag=!DamageProcess] at @s run function system:basesystem/player/targetting
tag @s remove Watcher

#防具、メイン,オフハンド確認、ステ取得
#execute as @s at @s store result score @s NumSlot run data get entity @s Inventory
execute as @s at @s run function system:basesystem/player/status/slotdecision
#各種ステータス計算
#メインハンド
execute as @s at @s store result score @s varA run data get entity @s SelectedItem
execute if score @s varA matches 1.. run function system:basesystem/player/status/mainhanditemstatus
#オフハンド
execute as @s at @s store result score @s varA run data get entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] HandItems[1]
execute if score @s varA matches 1.. run function system:basesystem/player/status/offhanditemstatus
#胴防具
execute as @s at @s store result score @s varA run data get entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] ArmorItems[2]
execute if score @s varA matches 1.. run function system:basesystem/player/status/armorchestitemstatus
#脛防具
execute as @s at @s store result score @s varA run data get entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] ArmorItems[1]
execute if score @s varA matches 1.. run function system:basesystem/player/status/armorlegsitemstatus
#足防具
execute as @s at @s store result score @s varA run data get entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] ArmorItems[0]
execute if score @s varA matches 1.. run function system:basesystem/player/status/armorfeetitemstatus
#武器種取得
execute as @s at @s store result score @s WeaponType run data get entity @s SelectedItem.tag.WeaponType
execute as @s at @s if score @s WeaponType matches 0 run scoreboard players set @s WeaponType 5
#ユニークアイテム取得
execute as @s at @s store result score @s RightUniqItem run data get entity @s SelectedItem.tag.UniqItem.UniqItem
execute as @s at @s store result score @s LeftUniqItem run data get entity @s Inventory[{Slot:-106b}].tag.UniqItem.UniqItem
#選択中のサブアクション取得
scoreboard players set @s SubAction 0
#スキルセット
execute if entity @s[scores={SetMainAction=1..}] run function system:basesystem/player/setskill/setmainaction
execute if entity @s[scores={SetSubAction=1..}] run function system:basesystem/player/setskill/setsubaction
execute if entity @s[scores={SetExAction=1..}] run function system:basesystem/player/setskill/setextendaction
execute if entity @s[scores={SetTriggerAct=1..}] run function system:basesystem/player/setskill/settriggeraction
#スキル処理

##ロール
execute if entity @s[advancements={system:skilltree/role/basicrole/warrior=true}] at @s run function system:skills/role/basicrole/warrior/warrior
execute if entity @s[advancements={system:skilltree/role/basicrole/ranger=true}] at @s run function system:skills/role/basicrole/ranger/ranger

#能力値処理

execute if entity @s[scores={DEX=1..}] run scoreboard players operation @s MovementSpeed += @s DEX

execute if entity @s[scores={VIT=1..}] store result storage layerofdimension:system var int 5 run scoreboard players get @s VIT
execute if entity @s[scores={VIT=1..}] store result score @s varA run data get storage layerofdimension:system var
execute if entity @s[scores={VIT=1..}] run scoreboard players operation @s MaxHP += @s varA

execute if entity @s[scores={POW=1..}] store result storage layerofdimension:system var int 5 run scoreboard players get @s POW
execute if entity @s[scores={POW=1..}] store result score @s varA run data get storage layerofdimension:system var
execute if entity @s[scores={POW=1..}] run scoreboard players operation @s MaxMP += @s varA

#マスタリースキル処理
execute if entity @s[scores={WarriorMastery=1..}] run function system:basesystem/mastaryskill/warrior
execute if entity @s[scores={RangerMastery=1..}] run function system:basesystem/mastaryskill/ranger
execute if entity @s[scores={MageMastery=1..}] run function system:basesystem/mastaryskill/mage
execute if entity @s[scores={ClericMastery=1..}] run function system:basesystem/mastaryskill/cleric

#サブアクションタイム加算
#execute as @s[scores={RightUniqItem=16777217}] run scoreboard players operation @s SubActionTime1 = @s SubActionTime
#execute as @s[scores={RightUniqItem=16777218}] run scoreboard players operation @s SubActionTime2 = @s SubActionTime
#スキルCT
#execute as @s[scores={SubActionTime1=1..}] run scoreboard players remove @s SubActionTime1 1
#execute as @s[scores={SubActionTime2=1..}] run scoreboard players remove @s SubActionTime2 1
#execute as @s[scores={TriggerActionCT=1..}] run scoreboard players remove @s TriggerActionCT 1
#execute as @s[scores={ExtendActionCT=1..}] run scoreboard players remove @s ExtendActionCT 1
#状態異常処理
function system:basesystem/buff_debuff


#右クリックアイテム使用処理
execute as @s[scores={RightClick=1..,RightClickCT=5..}] at @s run function system:basesystem/player/rightclickitem

#満腹度処理
execute as @s at @s run function system:basesystem/player/saturationprocess
scoreboard players operation @s varA = @s Time
scoreboard players operation @s varA %= @s SaturationSubT
scoreboard players operation @s[scores={varA=0}] Saturation -= @s SaturationSubV
effect give @s[scores={varA=0,Saturation=30..80}] minecraft:hunger 1 0 true
effect give @s[scores={varA=0,Saturation=..30}] minecraft:hunger 1 49 true
effect give @s[scores={varA=0,Saturation=0}] minecraft:hunger 5 99 true

#HP自動回復処理
scoreboard players operation @s varA = @s Time
scoreboard players operation @s varA %= @s HPRegeneration
scoreboard players operation @s[scores={varA=0}] HP += @s HPRegenerationV

#MP自動回復処理
scoreboard players operation @s varA = @s Time
scoreboard players operation @s varA %= @s MPRegeneration 
scoreboard players operation @s[scores={varA=0}] MP += @s MPRegenerationV

#基礎アクション
#ステップ
execute as @s at @s run function system:action/step/step
#バックステップ
scoreboard players add @s BackStepTime 1
execute if entity @s[gamemode=adventure,scores={BackStepTime=4..,OnSneak=1,ZFacing=-1}] as @s at @s run function system:action/step/backstep
#壁ジャンプ
scoreboard players add @s walljumpCT 1
execute as @s[gamemode=adventure,scores={walljumpCT=3..,SlidingTrigger=0},x_rotation=-70..90] at @s run function system:action/walljump/walljump
#空中ダッシュ
execute as @s[gamemode=adventure,scores={walljumpCT=3..,doublejumpT=0,OnSneak=1..},tag=!walljump] at @s if block ~ ~-1 ~ air run function system:action/doublejump/doublejump
execute as @s unless block ~ ~-1 ~ air run scoreboard players set @s doublejumpT 0
tag @s remove walljump
#ガード
execute if entity @s[scores={XFacing=0,ZFacing=0,RightClickCT=..3,WeaponType=2}] run function system:action/guard/guard
execute unless entity @s[scores={XFacing=0,ZFacing=0,RightClickCT=..3,WeaponType=2}] run scoreboard players set @s GuardTime 0
execute unless entity @s[scores={XFacing=0,ZFacing=0,RightClickCT=..3,WeaponType=2}] run tag @s remove JustGuard
#スライディング
execute as @s[scores={SlidingTrigger=1}] at @s run function system:action/sliding/sliding
execute as @e[tag=sliding,sort=nearest,scores={Time=3..}] run tp ~ -100 ~
kill @e[tag=sliding,sort=nearest,scores={Time=5..}]

#セーフティ
scoreboard players operation @s HP < @s MaxHP
scoreboard players operation @s MP < @s MaxMP

#セーフティ
scoreboard players set @s varA 0
scoreboard players operation @s Saturation > @s varA
scoreboard players operation @s Saturation < @s MaxSaturation

#セーフティ
scoreboard players set @s varA 325
scoreboard players operation @s ArrowSpeed < @s varA

#ステ計算、反映
execute as @s at @s positioned ~ ~ ~ as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=influencestatus] at @s positioned ~ ~ ~ run function system:basesystem/player/status/influencestatus
execute as @s at @s run function system:basesystem/damagetest

#通常攻撃
execute if entity @s[scores={DealtDamage=1..,WeaponType=1..7}] run function system:action/normalattack/root
execute if entity @e[type=armor_stand,tag=normalattack] run tag @s add check
execute if entity @e[type=armor_stand,tag=normalattack] as @e[type=armor_stand,tag=normalattack] at @s run function system:action/normalattack/middleprocess
tag @s remove check

#武器固有アクションセット

#アクションスキル発動
execute as @s[scores={ActionID=1..}] at @s run function system:action/actionprocess

#矢によって与えるダメージを実際の矢に反映
#execute as @s[scores={UseBow=1..}] at @s positioned ~ ~1 ~ run function system:basesystem/player/arrowprocess

#RightClick
scoreboard players add @s RightClickCT 1
scoreboard players set @s[scores={RightClick=1..}] RightClickCT 0

#初期化
scoreboard players set @s[scores={OnSneak=0}] OnSneakTime 0
scoreboard players set @s SubActionTime 0
scoreboard players set @s IncandDecT 0
scoreboard players set @s OnSneak 0
scoreboard players set @s RightClick 0

#死亡処理
execute if score @s HP matches ..0 run kill @s
execute if score @s HP matches ..0 run scoreboard players operation @s HP = @s MaxHP

#ダメージ計算

scoreboard players add @s HitTime 1
#execute if score @s Damage matches 1.. run function system:basesystem/damageprocessing
#scoreboard players set @s Damage 0
#矢のダメージ計算
execute as @s at @s run function system:basesystem/arrowdamage

scoreboard players set @s UseBow 0
scoreboard players set @s DealtDamage 0
execute if entity @s[advancements={system:damage/test=true}] run advancement revoke @s only system:damage/test

#PrevPos代入
execute as @s store result score @s PrevPosX run data get entity @p Pos[0] 1000
execute as @s store result score @s PrevPosY run data get entity @p Pos[1] 1000
execute as @s store result score @s PrevPosZ run data get entity @p Pos[2] 1000

#レベルアップ処理
scoreboard players operation @s varA = @s EXP
scoreboard players operation @s varA /= @s NextEXP
execute if score @s varA matches 1.. run function system:basesystem/player/levelup/levelupmainprocess

#攻撃確認用Mob召喚
execute as @s[gamemode=adventure,nbt=!{SelectedItem:{id:"minecraft:bow"}}] at @s unless block ^ ^ ^0.5 #minecraft:doors unless entity @e[sort=nearest,limit=1,tag=DamageProcess,distance=..5] run summon minecraft:giant ~ ~2 ~ {Team:"NoCollision",Health:1f,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:16777216,ShowParticles:0b},{Id:11b,Amplifier:10b,Duration:16777216,ShowParticles:0b}],NoGravity:1b,Silent:1b,NoAI:1b,Tags:["DamageProcess","System"],DeathLootTable:"system:none",ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}}]}
execute as @s[gamemode=adventure] as @e[sort=nearest,limit=1,tag=DamageProcess,distance=..5] at @p run tp @s ^ ^ ^1.5 ~ ~
#execute as @s[gamemode=!adventure] as @e[sort=nearest,limit=1,tag=DamageProcess,distance=..5] run tp @s ~ ~-10000 ~
execute as @s[gamemode=adventure] at @s if block ^ ^ ^0.5 #minecraft:doors as @e[sort=nearest,limit=1,tag=DamageProcess,distance=..5] run tp @s ~ ~-10000 ~
execute as @e[tag=DamageProcess] at @s unless entity @p[distance=..5,gamemode=adventure,sort=nearest,limit=1,nbt=!{SelectedItem:{id:"minecraft:bow"}}] run tp @s ~ ~-10000 ~
execute as @e[type=giant,scores={Time=300..},tag=DamageProcess] run tp @s ~ ~-10000 ~