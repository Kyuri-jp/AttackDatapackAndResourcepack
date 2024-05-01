#> core:storage/set_values
#
# Storageに値を設定します
#
# @within core:load/

# set Datas
    ## registry
        data merge storage attack:registry {Main: {Calculation: {Seconds: 20}, Const: {Thousand: 1000, Fifty: 50, Two: 2}, Weapons: {Magics: {Mp: {Max: 100, Smooth: 10}}}}}
        data merge storage attack:registry {Main: {Sys: {DataPackVersion: 1.1.3.beta, ResourcePackVersion: 0.1.2}}}

    ## settings
        data merge storage attack:settings {Main: {Default: {Times: {Game: {CoolDown: 120, Ex: 3600, MainGame: 3600, Preparation: 3600}}, Switch: {Ex: false}}}}
        data merge storage attack:settings {Main: {Weapons: {Magics: {Rods: {Shot: {Scope: 30}, UsingMp: {Dark: 42, Drain: 65, Explosion: 72, Flash: 65, Inferno: 78, Lightning: 80, Meteor: 120, PoisonDrink: 55, Reel: 67, WaterChain: 40}}}}}}
        data merge storage attack:settings {Main: {Weapons: {Magics: {Spells: {UsingMana: {ChestReload: 30, Debility: 120, EffectRestore: 30, GetSomeMana: 10, Heal: 12, HealMp: 15, Illumination: 23, Invincible: 80, LayerMover: 23, ManaMagnet: 150, MpDrain: 160, RandomBookChance: 60, RandomLootChance: 35, RandomRodChance: 20, RandomSpellChance: 40, RandomSwordChance: 30, Rescues: 36, Underground: 180, WitherSkeletonRemover: 40, Transaction: "?",MpEfficiency:60}}}}}}
        data merge storage attack:settings {Main: {Weapons: {Magics: {Spells: {UsingMana: {GetSomeManaPlus: 20, HealMpPlus: 24, HealPlus: 26,MpEfficiencyPlus:120}}}}}}

    ## none custom setting
        execute unless data storage attack:settings Main.Custom run function core:storage/copy_default_settings

    ## messages
    #text display
        data merge storage attack:messages {Main: {WaitRoom: {Team: {Blue: '{"text":"Blue Team","bold":true,"color":"blue"}', Red: '{"text":"Red Team","bold":true,"color":"red"}', Watch: '{"text":"Watch Team","bold":true,"color":"gray"}'}}}}