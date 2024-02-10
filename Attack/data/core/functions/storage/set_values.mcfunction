# set datas
    ## registry
        data merge storage storage:registry {Main:{Calculation:{Seconds:20},Const:{Two:2,Thousand:1000},Weapons:{Magics:{Mp:{Max:100,Smooth:6}}}}}
        data merge storage storage:registry {Main:{Sys:{Version:0.0.1,DataPackVersion:0.0.0.alpha,ResourcePackVersion:0.0.1}}}

    ## settings
        data merge storage storage:settings {Main:{Default:{Times:{Game:{CoolDown:500,MainGame:3600,Preparation:2400,Ex:2400}},Switch:{Ex:false}}}}
        data merge storage storage:settings {Main:{Weapons:{Magics:{Rods:{Shot:{Scope:30},UsingMp:{Explosion:42,Dark:40,Drain:45,Lightning:60,Meteor:80,WaterChain:30,Flash:45,Reel:57}}}}}}
        data merge storage storage:settings {Main:{Weapons:{Magics:{Spells:{UsingMana:{ChestReload:15,RandomLootChance:7,GetSomeMana:3,Heal:2,HealMp:3,LayerMover:7,WitherSkeletonRemover:30}}}}}}
        data merge storage storage:settings {Main:{Weapons:{Magics:{Spells:{UsingMana:{HealPlus:12,HealMpPlus:13,GetSomeManaPlus:6}}}}}}

    ## none custom setting
        execute unless data storage storage:settings Main.Custom run function core:storage/copy_default_settings

    ## messages
    #text display
        data merge storage storage:messages {Main:{WaitRoom:{Team:{Red:'{"text":"Red Team","bold":"true","color":"red"}',Blue:'{"text":"Blue Team","bold":true,"color":"blue"}',Watch:'{"text":"Watch Team","bold":true,"color":"gray"}'}}}}

    #lack
        data merge storage storage:messages {Main:{Weapons:{Lack:{Mp:'{"text":"MPが足りません!","bold":"true"}',Mana:'{"text":"マナが足りません!","bold":true}'}}}}

    #missing
        data merge storage storage:messages {Main:{Weapons:{Missing:{Book:'{"text":"本を左手に持ってください","bold":true}'}}}}