#> system:objectlist
# 変数一覧
# @public

#> ID (Entity)
#
# ID: 全エンティティに付与される固有のID
#
# ParentID: エンティティの召喚元
# @public
    #declare objective ID
    #declare objective ParentID
scoreboard objectives add ID dummy "固有のID"
scoreboard objectives add ParentID dummy "親のID"

#> Pos (Entity)
#
# Pos: 現在座標 
#
# PrevPos: 移動する前の座標。もしくは、1tick前の座標
# @public
    #declare objective PosX
    #declare objective PosY
    #declare objective PosZ
    #declare objective PrevPosX
    #declare objective PrevPosY
    #declare objective PrevPosZ
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add PrevPosX dummy
scoreboard objectives add PrevPosY dummy
scoreboard objectives add PrevPosZ dummy
#> Vel (MobOnly)
#
# Vel: 速度 
# @public
    #declare objective VelX
    #declare objective VelY
    #declare objective VelZ
scoreboard objectives add VelX dummy 
scoreboard objectives add VelY dummy 
scoreboard objectives add VelZ dummy 
#> CL
#
# CL: キャラレベル(CharaLevel)。1~250
# @public
    #declare objective CL
scoreboard objectives add CL dummy "キャラレベル"
#> EXP (PlayerOnly)
#
# EXP: 現在持っている経験値
#
# PrevEXP: 前回のレベルアップに必要だった経験値
#
# NextEXP: レベルアップに必要な経験値
# @public
    #declare objective EXP
    #declare objective PrevEXP
    #declare objective NextEXP
scoreboard objectives add EXP dummy "現在経験値"
scoreboard objectives add PrevEXP dummy "前回のレベルアップに必要だった経験値"
scoreboard objectives add NextEXP dummy "レベルアップに必要な経験値"
scoreboard objectives add MaxHP dummy "最大HP"
scoreboard objectives add HP dummy
scoreboard objectives add HPRegeneration dummy "HP回復速度"
scoreboard objectives add HPRegenerationV dummy "HP自然回復値"
scoreboard objectives add MaxMP dummy "最大MP"
scoreboard objectives add MP dummy
scoreboard objectives add MPRegeneration dummy "MP回復速度"
scoreboard objectives add MPRegenerationV dummy "MP自然回復値"
scoreboard objectives add SkillPoint dummy "スキルポイント"
scoreboard objectives add CharaPoint dummy "キャラポイント"
scoreboard objectives add AttackSpeed dummy "攻撃速度"
scoreboard objectives add Attack dummy "攻撃力"
scoreboard objectives add Defence dummy "物理防御力"
scoreboard objectives add Resist dummy "物理耐性"
scoreboard objectives add MaxSaturation dummy "最大満腹度"
scoreboard objectives add Saturation dummy "満腹度"
scoreboard objectives add SaturationSubV dummy "満腹度減少値"
scoreboard objectives add SaturationSubT dummy "満腹度減少速度"
scoreboard objectives add MovementSpeed dummy "移動速度"
scoreboard objectives add KnockbackResist dummy "ノックバック耐性"
scoreboard objectives add Luck dummy "運"
#能力値
scoreboard objectives add STR dummy
scoreboard objectives add INT dummy
scoreboard objectives add PER dummy
scoreboard objectives add DEX dummy
scoreboard objectives add VIT dummy
scoreboard objectives add POW dummy
#マスタリースキル
scoreboard objectives add WarriorMastery dummy
scoreboard objectives add RangerMastery dummy
scoreboard objectives add MageMastery dummy
scoreboard objectives add ClericMastery dummy

scoreboard objectives add NumSlot dummy "インベントリにあるアイテムの数"
scoreboard objectives add FifthLastNSlot dummy "最も後ろから5番目のスロット"
scoreboard objectives add FourthLastNSlot dummy "最も後ろから4番目のスロット"
scoreboard objectives add ThirdLastNSlot dummy "最も後ろから3番目のスロット"
scoreboard objectives add SecondLastNSlot dummy "最も後ろから2番目のスロット"
scoreboard objectives add LastNumSlot dummy "最も後ろのスロット"
scoreboard objectives add DealtDamage minecraft.custom:minecraft.damage_dealt_resisted "与えたダメージ"
scoreboard objectives add Damage dummy "受けたダメージ"
scoreboard objectives add Damage_Multiple dummy
scoreboard objectives add ArrowSpeed dummy "矢の速度"
scoreboard objectives add NormalAttackCT dummy "通常攻撃CT"
scoreboard objectives add HitTime dummy "攻撃を受けてからの時間"
scoreboard objectives add HitID dummy "攻撃を受けたEntityのID"
scoreboard objectives add HitType dummy "受けた攻撃の種類"
scoreboard objectives add Hate dummy
scoreboard objectives add HateTime dummy
scoreboard objectives add Random dummy
scoreboard objectives add RandomA dummy
scoreboard objectives add RandomB dummy
scoreboard objectives add RandomSeed dummy
scoreboard objectives add RandomM dummy
scoreboard objectives add varA dummy
scoreboard objectives add varB dummy
scoreboard objectives add varC dummy
scoreboard objectives add varD dummy
scoreboard objectives add varE dummy
scoreboard objectives add Time dummy
#状態異常
scoreboard objectives add KnockbackLv dummy
scoreboard objectives add StunLv dummy

#食べ物
scoreboard objectives add EatApple minecraft.used:minecraft.apple
scoreboard objectives add EatMushroom minecraft.used:minecraft.mushroom_stew
scoreboard objectives add EatBread minecraft.used:minecraft.bread
scoreboard objectives add EatPorkchop minecraft.used:minecraft.porkchop
scoreboard objectives add EatCPorkchop minecraft.used:minecraft.cooked_porkchop
scoreboard objectives add EatGApple minecraft.used:minecraft.golden_apple
scoreboard objectives add EatENCGApple minecraft.used:minecraft.enchanted_golden_apple
scoreboard objectives add EatCod minecraft.used:minecraft.cod
scoreboard objectives add EatSalmon minecraft.used:minecraft.salmon
scoreboard objectives add EatTropicalF minecraft.used:minecraft.tropical_fish
scoreboard objectives add EatPufferF minecraft.used:minecraft.pufferfish
scoreboard objectives add EatCCod minecraft.used:minecraft.cooked_cod
scoreboard objectives add EatCSalmon minecraft.used:minecraft.cooked_salmon
scoreboard objectives add EatCake minecraft.used:minecraft.cake
scoreboard objectives add EatCookie minecraft.used:minecraft.cookie
scoreboard objectives add EatMelonS minecraft.used:minecraft.melon_slice
scoreboard objectives add EatDriedKelp minecraft.used:minecraft.dried_kelp
scoreboard objectives add EatBeef minecraft.used:minecraft.beef
scoreboard objectives add EatCBeef minecraft.used:minecraft.cooked_beef
scoreboard objectives add EatChicken minecraft.used:minecraft.chicken
scoreboard objectives add EatCChicken minecraft.used:minecraft.cooked_chicken
scoreboard objectives add EatRFlesh minecraft.used:minecraft.rotten_flesh
scoreboard objectives add EatSpiderEye minecraft.used:minecraft.spider_eye
scoreboard objectives add EatCarrot minecraft.used:minecraft.carrot
scoreboard objectives add EatPotato minecraft.used:minecraft.potato
scoreboard objectives add EatBPotato minecraft.used:minecraft.baked_potato
scoreboard objectives add EatPPotato minecraft.used:minecraft.poisonous_potato
scoreboard objectives add EatPumpkinPie minecraft.used:minecraft.pumpkin_pie
scoreboard objectives add EatRabbit minecraft.used:minecraft.rabbit
scoreboard objectives add EatCRabbit minecraft.used:minecraft.cooked_rabbit
scoreboard objectives add EatRabbitStew minecraft.used:minecraft.rabbit_stew
scoreboard objectives add EatMutton minecraft.used:minecraft.mutton
scoreboard objectives add EatCMutton minecraft.used:minecraft.cooked_mutton
scoreboard objectives add EatBeetRoot minecraft.used:minecraft.beetroot
scoreboard objectives add EatBeetRootS minecraft.used:minecraft.beetroot_soup
scoreboard objectives add EatSweetBerries minecraft.used:minecraft.sweet_berries
scoreboard objectives add EatHoneyBottle minecraft.used:minecraft.honey_bottle
scoreboard objectives add FoodAbility dummy
scoreboard objectives add EatFoodF dummy

scoreboard objectives add OnWalk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add OnSneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add OnSneakTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add StepTrigger1 minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add StepTrigger2 minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add StepTime dummy
scoreboard objectives add StepTime2 dummy
scoreboard objectives add BackStepTime dummy
scoreboard objectives add StepDashTrigger dummy
scoreboard objectives add doublejumpT dummy
scoreboard objectives add doublejumpL dummy "ジャンプ追加回数"
scoreboard objectives add walljumpCT dummy "壁ジャンプクールタイム"
scoreboard objectives add GuardTime dummy
scoreboard objectives add SlidingTrigger dummy 
scoreboard objectives add UseBow minecraft.used:minecraft.bow
scoreboard objectives add team dummy "チーム"
scoreboard objectives add RightClick minecraft.used:minecraft.carrot_on_a_stick "右クリック"
scoreboard objectives add RightClickCT dummy
scoreboard objectives add WeaponType dummy "装備中の武器種"
scoreboard objectives add RightUniqItem dummy 
scoreboard objectives add LeftUniqItem dummy
scoreboard objectives add XFacing dummy 
scoreboard objectives add ZFacing dummy 
#ステータス異常関連
scoreboard objectives add IncandDecT dummy 
scoreboard objectives add MaxHPIaD dummy
scoreboard objectives add MaxMPIaD dummy
scoreboard objectives add AttackSpeedIaD dummy
scoreboard objectives add AttackIaD dummy
scoreboard objectives add DefenceIaD dummy
scoreboard objectives add ResistIaD dummy
scoreboard objectives add KnockbackIaD dummy
scoreboard objectives add MoveSpeedIaD dummy
scoreboard objectives add MaxHPIaDT dummy
scoreboard objectives add MaxMPIaDT dummy
scoreboard objectives add AttackSpeedIaDT dummy
scoreboard objectives add AttackIaDT dummy
scoreboard objectives add DefenceIaDT dummy
scoreboard objectives add ResistIaDT dummy
scoreboard objectives add KnockbackIaDT dummy
scoreboard objectives add MoveSpeedIaDT dummy
#スキル関連:F=Front,L=Left,B=Back,R=Right,S=Shift,TrAct=TriggerAction,CT=CoolTime,ExAct=ExtendAction
scoreboard objectives add MainAction dummy "メインアクション"
scoreboard objectives add MainActionF dummy "メインアクションF"
scoreboard objectives add MainActionFL dummy "メインアクションFL"
scoreboard objectives add MainActionL dummy "メインアクションL"
scoreboard objectives add MainActionBL dummy "メインアクションBL"
scoreboard objectives add MainActionB dummy "メインアクションB"
scoreboard objectives add MainActionBR dummy "メインアクションBR"
scoreboard objectives add MainActionR dummy "メインアクションR"
scoreboard objectives add MainActionFR dummy "メインアクションFR"
scoreboard objectives add TriggerAction dummy "トリガーアクション"
scoreboard objectives add TriggerActionF dummy "トリガーアクションF"
scoreboard objectives add TriggerActionFL dummy "トリガーアクションFL"
scoreboard objectives add TriggerActionL dummy "トリガーアクションL"
scoreboard objectives add TriggerActionBL dummy "トリガーアクションBL"
scoreboard objectives add TriggerActionB dummy "トリガーアクションB"
scoreboard objectives add TriggerActionBR dummy "トリガーアクションBR"
scoreboard objectives add TriggerActionR dummy "トリガーアクションR"
scoreboard objectives add TriggerActionFR dummy "トリガーアクションFR"
scoreboard objectives add SubActionF dummy "サブアクションF"
scoreboard objectives add SubActionFL dummy "サブアクションFL"
scoreboard objectives add SubActionL dummy "サブアクションL"
scoreboard objectives add SubActionBL dummy "サブアクションBL"
scoreboard objectives add SubActionB dummy "サブアクションB"
scoreboard objectives add SubActionBR dummy "サブアクションBR"
scoreboard objectives add SubActionR dummy "サブアクションR"
scoreboard objectives add SubActionFR dummy "サブアクションFR"
scoreboard objectives add SubActionSF dummy "サブアクションSF"
scoreboard objectives add SubActionSFL dummy "サブアクションSFL"
scoreboard objectives add SubActionSL dummy "サブアクションSL"
scoreboard objectives add SubActionSBL dummy "サブアクションSBL"
scoreboard objectives add SubActionSB dummy "サブアクションSB"
scoreboard objectives add SubActionSBR dummy "サブアクションSBR"
scoreboard objectives add SubActionSR dummy "サブアクションSR"
scoreboard objectives add SubActionSFR dummy "サブアクションSFR"
scoreboard objectives add ExtendAction dummy "エクステンドアクション"
scoreboard objectives add ExActF dummy "エクステンドアクションF"
scoreboard objectives add ExActFL dummy "エクステンドアクションFL"
scoreboard objectives add ExActL dummy "エクステンドアクションL"
scoreboard objectives add ExActBL dummy "エクステンドアクションBL"
scoreboard objectives add ExActB dummy "エクステンドアクションB"
scoreboard objectives add ExActBR dummy "エクステンドアクションBR"
scoreboard objectives add ExActR dummy "エクステンドアクションR"
scoreboard objectives add ExActFR dummy "エクステンドアクションFR"
scoreboard objectives add ExActSF dummy "エクステンドアクションSF"
scoreboard objectives add ExActSFL dummy "エクステンドアクションSFL"
scoreboard objectives add ExActSL dummy "エクステンドアクションSL"
scoreboard objectives add ExActSBL dummy "エクステンドアクションSBL"
scoreboard objectives add ExActSB dummy "エクステンドアクションSB"
scoreboard objectives add ExActSBR dummy "エクステンドアクションSBR"
scoreboard objectives add ExActSR dummy "エクステンドアクションSR"
scoreboard objectives add ExActSFR dummy "エクステンドアクションSFR"
scoreboard objectives add ExtendActionCT dummy "エクステンドアクションCT"
scoreboard objectives add ExActCTF dummy "エクステンドアクションCTF"
scoreboard objectives add ExActCTFL dummy "エクステンドアクションCTFL"
scoreboard objectives add ExActCTL dummy "エクステンドアクションCTL"
scoreboard objectives add ExActCTBL dummy "エクステンドアクションCTBL"
scoreboard objectives add ExActCTB dummy "エクステンドアクションCTB"
scoreboard objectives add ExActCTBR dummy "エクステンドアクションCTBR"
scoreboard objectives add ExActCTR dummy "エクステンドアクションCTR"
scoreboard objectives add ExActCTFR dummy "エクステンドアクションCTFR"
scoreboard objectives add ExActCTSF dummy "エクステンドアクションCTSF"
scoreboard objectives add ExActCTSFL dummy "エクステンドアクションCTSFL"
scoreboard objectives add ExActCTSL dummy "エクステンドアクションCTSL"
scoreboard objectives add ExActCTSBL dummy "エクステンドアクションCTSBL"
scoreboard objectives add ExActCTSB dummy "エクステンドアクションCTSB"
scoreboard objectives add ExActCTSBR dummy "エクステンドアクションCTSBR"
scoreboard objectives add ExActCTSR dummy "エクステンドアクションCTSR"
scoreboard objectives add ExActCTSFR dummy "エクステンドアクションCTSFR"
scoreboard objectives add SetMainActionID trigger
scoreboard objectives add SetMainAction trigger
scoreboard objectives add SetSubActionID trigger
scoreboard objectives add SetSubAction trigger
scoreboard objectives add SetTriggerActID trigger
scoreboard objectives add SetTriggerAct trigger
scoreboard objectives add SetExActionID trigger
scoreboard objectives add SetExAction trigger
scoreboard objectives add ActionID dummy "現在行われているアクション"
scoreboard objectives add ActionTime dummy "アクションタイム"
scoreboard objectives add ActionLoopCount dummy "アクションループ回数"
scoreboard objectives add ActionSpeed dummy "アクションスピード"
scoreboard objectives add ActionStep dummy "アクションステップ"
scoreboard objectives add ActionSpeed100 dummy "アクションスピード/100"
