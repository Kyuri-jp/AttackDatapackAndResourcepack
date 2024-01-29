# set datas
    ## registry
        data merge storage storage:registry {Main:{Calculation:{Seconds:20},Const:{Two:2,Thousand:1000},Weapons:{Magics:{Mp:{Max:100,Smooth:6}}}}}
        data merge storage storage:registry {Main:{Sys:{Version:0.0.1,DataPackVersion:0.0.0h,ResourcePackVersion:0.0.1}}}

    ## settings
        data merge storage storage:settings {Main:{Default:{Times:{Game:{CoolDown:500,MainGame:3600,Preparation:2400,Ex:2400}},Switch:{Ex:false}}}}
        data merge storage storage:settings {Main:{Weapons:{Magics:{Rods:{Shot:{Scope:30},UsingMp:{Explosion:20,Dark:15,Drain:30,Lightning:50,Meteor:80}}}}}}
        data merge storage storage:settings {Main:{Weapons:{Magics:{Spells:{UsingMana:{ChestReload:5,RandomLootChance:7,GetSomaMana:3,Heal:2,HealMp:3}}}}}}

    ## none custom setting
        execute unless data storage storage:settings Main.Custom run function core:copy_default_settings

    ## messages
    #lack
        data merge storage storage:messages {Main:{Weapons:{Lack:{Mp:'{"text":"MPが足りません!","bold":"true"}',Mana:'{"text":"マナが足りません!","bold":true}'}}}}

        #missing
    data merge storage storage:messages {Main:{Weapons:{Missing:{Book:'{"text":"本を左手に持ってください","bold":true}'}}}}
