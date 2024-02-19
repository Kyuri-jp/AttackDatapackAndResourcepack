# set datas
    ## registry
        data merge storage attack:registry {Main: {Calculation: {Seconds: 20}, Const: {Thousand: 1000, Two: 2}, Weapons: {Magics: {Mp: {Max: 100, Smooth: 6}}}}}
        data merge storage attack:registry {Main: {Sys: {DataPackVersion: 0.0.0.alpha, ResourcePackVersion: 0.0.1}}}

    ## settings
        data merge storage attack:settings {Main: {Default: {Times: {Game: {CoolDown: 500, Ex: 2400, MainGame: 3600, Preparation: 2400}}, Switch: {Ex: false}}}}
        data merge storage attack:settings {Main: {Weapons: {Magics: {Rods: {Shot: {Scope: 30}, UsingMp: {Dark: 40, Drain: 45, Explosion: 42, Flash: 45, Inferno: 58, Lightning: 60, Meteor: 80, PoisonDrink: 35, Reel: 57, WaterChain: 30}}}}}}
        data merge storage attack:settings {Main: {Weapons: {Magics: {Spells: {UsingMana: {ChestReload: 30, Debility: 120, EffectRestore: 30, GetSomeMana: 5, Heal: 2, HealMp: 3, Illumination: 23, Invincible: 80, LayerMover: 17, ManaMagnet: 150, MpDrain: 160, RandomBookChance: 60, RandomLootChance: 35, RandomRodChance: 20, RandomSpellChance: 40, RandomSwordChance: 30, Rescues: 36, Underground: 180, WitherSkeletonRemover: 40}}}}}}
        data merge storage attack:settings {Main: {Weapons: {Magics: {Spells: {UsingMana: {GetSomeManaPlus: 10, HealMpPlus: 13, HealPlus: 15}}}}}}

    ## none custom setting
        execute unless data storage attack:settings Main.Custom run function core:storage/copy_default_settings

    ## messages
    #text display
        data merge storage attack:messages {Main: {WaitRoom: {Team: {Blue: '{"text":"Blue Team","bold":true,"color":"blue"}', Red: '{"text":"Red Team","bold":"true","color":"red"}', Watch: '{"text":"Watch Team","bold":true,"color":"gray"}'}}}}

    #lack
        data merge storage attack:messages {Main: {Weapons: {Lack: {Mana: '{"translate":"item.lore.weapons.magics.lack.mana","bold":true}', Mp: '{"translate":"item.lore.weapons.magics.lack.mp","bold":"true"}'}}}}

    #missing
        data merge storage attack:messages {Main: {Weapons: {Missing: {Book: '{"translate":"item.lore.weapons.magics.missing.book","bold":true}'}}}}