# Assets
advancementやpredicate,loot_tableが定義されています。

関数はありません。

# Advancements
|Advancement名|トリガー|呼び出す関数|
|----|----|----|
|`any_player_killed`|`minecraft:player_killed_entity`|`systems:scores/count/killed/add/any_player_killed`|
|`installed`|`minecraft:location`|`core:installed/message`|
|`killed_red_team`|`minecraft:entity_killed_player`|`systems:scores/count/killed/add/reds_score`|
|`killed_blue_team`|`minecraft:entity_killed_player`|`systems:scores/count/killed/add/blues_score`|

## count
|Advancement名|トリガー|呼び出す関数|
|----|----|----|
|`using_bow`|`minecraft:using_item`|`systems:weapons/magics/spells/count_using_time`|

## weapons
|Advancement名|トリガー|呼び出す関数|
|----|----|----|
|`{sword name}`|`minecraft:entity_hurt_player`|`systems:weapons/swords/ability/{sword name}`|

# DamageType
## weapons
|DamageType名|Message ID|
|----|----|
|`{book name}`|`magic.{book name}`|

### swords
> aqua,end,eternal,freezeの4種類のみです

|DamageType名|Message ID|
|----|----|
|`{sword name}`|`sword.adv.{sword name}`|

## misc

# LootTable
ほとんどのアイテムには独自NBTが使用されています。詳細は[こちら](/Attack/data/assets/loot_tables/weapons/About_NBTs.md)

## chests
Tireは高ければ高いほど強い武器,アイテムが手に入る

各Tireの内容物についてはこちらloot_tables/chests/items/Tire.md
|LootTable名|概要|
|----|----|
|`tire_{tire}`|Tire{tire}のチェスト|

## spell
|LootTable名|概要|
|----|----|
|`get_some_mana`|呪文Get Some Mana類を使用した際に呼び出される|
|`random_loot_chance`|呪文Random Loot Chanceを使用した際に呼び出される|

## weapons
各武器,呪文,魔法,杖のデータを保存したLootTable

> `books/books`,`rods/rods`,`spells/spells`,`swords/swords`は全てのLootTableをまとめています

# Predicate
|Predicate名|Conditionの内容|
|----|----|
|`dont_have_any_items_of_off_hand`|オフハンドに何もアイテムを持っていない|
|`dont_have_any_items`|メインハンドに何もアイテムを持っていない|
|`is_sneaking`|スニークしている|
|`random_set`|チェストの散らばり具合|

## itemsp
### operator
|Predicate名|Conditionの内容|
|----|----|
|`{Button名}`|{Button名}を持っている|

### weapons
|Predicate名|Conditionの内容|
|----|----|
|`{Weapon名}`|{Weapon名}を持っている|

### weapons
|Predicate名|Conditionの内容|
|----|----|
|`{Sword名}`|ランダムイベントの発生具合|

# Tag
## blocks
|Tag名|定義|
|----|----|
|`as_air`|空気ブロックとして扱うブロック|