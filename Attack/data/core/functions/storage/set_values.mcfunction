# set datas
    ## registry
        data merge storage storage:registry {Main:{Calculation:{Seconds:20},Const:{Two:2,Thousand:1000},Weapons:{Magics:{Mp:{Max:100,Smooth:6}}}}}
        data merge storage storage:registry {Main:{Sys:{Version:0.0.1,DataPackVersion:0.0.0.alpha,ResourcePackVersion:0.0.1}}}

    ## settings
        data merge storage storage:settings {Main:{Default:{Times:{Game:{CoolDown:500,MainGame:3600,Preparation:2400,Ex:2400}},Switch:{Ex:false}}}}
        data merge storage storage:settings {Main:{Weapons:{Magics:{Rods:{Shot:{Scope:30},UsingMp:{Explosion:42,Dark:40,Drain:45,Lightning:60,Meteor:80,WaterChain:30,Flash:45,Reel:57,PoisonDrink:35,Inferno:58}}}}}}
        data merge storage storage:settings {Main:{Weapons:{Magics:{Spells:{UsingMana:{ChestReload:30,RandomLootChance:35,GetSomeMana:5,Heal:2,HealMp:3,LayerMover:17,WitherSkeletonRemover:40,Illumination:23,Rescues:36,Underground:180,Debility:120,Invincible:80,ManaMagnet:150,EffectRestore:30,MpDrain:160,RandomSwordChance:30,RandomRodChance:20,RandomSpellChance:40,RandomBookChance:60}}}}}}
        data merge storage storage:settings {Main:{Weapons:{Magics:{Spells:{UsingMana:{HealPlus:15,HealMpPlus:13,GetSomeManaPlus:10}}}}}}

    ## none custom setting
        execute unless data storage storage:settings Main.Custom run function core:storage/copy_default_settings

    ## messages
    #text display
        data merge storage storage:messages {Main:{WaitRoom:{Team:{Red:'{"text":"Red Team","bold":"true","color":"red"}',Blue:'{"text":"Blue Team","bold":true,"color":"blue"}',Watch:'{"text":"Watch Team","bold":true,"color":"gray"}'}}}}

    #lack
        data merge storage storage:messages {Main:{Weapons:{Lack:{Mp:'{"text":"MPが足りません!","bold":"true"}',Mana:'{"text":"マナが足りません!","bold":true}'}}}}

    #missing
        data merge storage storage:messages {Main:{Weapons:{Missing:{Book:'{"text":"本を左手に持ってください","bold":true}'}}}}
