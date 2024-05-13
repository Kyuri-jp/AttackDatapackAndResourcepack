#> core:load/add/scoreboards
#
# Scoreboardを追加します
#
# @within function core:load/

# set
    scoreboard objectives add TeamList dummy {"text": "|Teams|","bold": true,"color": "gold"}
    scoreboard objectives add Scores dummy {"text": "|Scores|","bold": true,"color": "gold"}
    scoreboard objectives add UseCarrotStick used:carrot_on_a_stick {"text": "event:ニンジン棒の使用"}
    scoreboard objectives add UseFungusStick used:warped_fungus_on_a_stick {"text": "event:キノコ棒の使用"}
    scoreboard objectives add UseBow dummy {"text": "event:弓の使用"}
    scoreboard objectives add Mp dummy {"text": "Magic Point(MP)"}
    scoreboard objectives add MpMax dummy {"text": "MPの最大値"}
    scoreboard objectives add Temporary dummy {"text": "一時スコア"}
    scoreboard objectives add Datas dummy {"text": "適当なデータ"}
    scoreboard objectives add AttackerID dummy {"text": "攻撃者のplayerID"}
    scoreboard objectives add PlayerID dummy {"text": "プレイヤーごとの固有ID"}
    scoreboard objectives add ManaCounter dummy {"text": "マナ数"}
    scoreboard objectives add Counter dummy {"text": "カウンター"}
    scoreboard objectives add CoolDownCounter dummy {"text": "クールダウン専用カウンター"}
    scoreboard objectives add KillCounter dummy {"text": "キル数"}
    scoreboard objectives add DeathCounter deathCount {"text": "デス数カウンター"}
    scoreboard objectives add DeathDetecter deathCount {"text": "event:プレイヤーが死亡した時"}
    scoreboard objectives add DamageTaken minecraft.custom:damage_taken {"text": "受けたダメージの計測"}