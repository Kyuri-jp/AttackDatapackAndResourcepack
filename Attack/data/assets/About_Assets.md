# Assets
advancementやpredicate,loot_tableが定義されています。

関数はありません。

# [Advancements](advancements/)
|Advancement名|トリガー|呼び出す関数|
|----|----|----|
|[`any_player_killed`](advancements/any_player_killed.json)|`minecraft:player_killed_entity`|[`scores:count/killed/add/any_player_killed`](/Attack/data/scores/functions/count/killed/add/any_player_killed.mcfunction)|
|[`installed`](advancements/installed.json)|`minecraft:location`|[`core:installed/message`](/Attack/data/core/functions/installed/message.mcfunction)|
|[`killed_red_team`](advancements/killed_red_team.json)|`minecraft:entity_killed_player`|[`scores:count/killed/add/reds_score`](/Attack/data/scores/functions/count/killed/add/reds_score.mcfunction)|
|[`killed_blue_team`](advancements/killed_blue_team.json)|`minecraft:entity_killed_player`|[`scores:count/killed/add/blues_score`](/Attack/data/scores/functions/count/killed/add/blues_score.mcfunction)|

## [count/](advancements/count/)[items](advancements/count/items/)
|Advancement名|トリガー|呼び出す関数|
|----|----|----|
|[`using_bow`](advancements/count/items/using_bow.json)|`minecraft:using_item`|[`systems:weapons/magics/spells/count_using_time`](/Attack/data/systems/functions/weapons/magics/spells/count_using_time.mcfunction)|

## [weapons/](advancements/weapons/)[swords](advancements/weapons/swords/)
|Advancement名|トリガー|呼び出す関数|
|----|----|----|
|[`{sword name}`](advancements/weapons/swords/)|`minecraft:entity_hurt_player`|[`systems:weapons/swords/{sword name}`](/Attack/data/systems/functions/weapons/swords/)|

# [DamageType](damage_type/)
## [weapons/](damage_type/weapons/)[magics/](damage_type/weapons/magics/)[books](damage_type/weapons/magics/books/)
|DamageType名|Message ID|
|----|----|
|[`{book name}`](damage_type/weapons/magics/books/)|`magic.{book name}`|

### [swords](damage_type/weapons/swords/)
> aqua,end,eternal,freezeの4種類のみです

|DamageType名|Message ID|
|----|----|
|[`{sword name}`](damage_type/weapons/swords/)|`sword.adv.{sword name}`|

## [misc](damage_type/misc/)

# [LootTable](loot_tables/)
ほとんどのアイテムには独自NBTが使用されています。詳細は[こちら](/Attack\data\assets\loot_tables\weapons\About_NBTs.md)

## [chests/](loot_tables/chests/)[items](loot_tables/chests/items/)
Tireは高ければ高いほど強い武器,アイテムが手に入る

各Tireの内容物については[こちら](loot_tables/chests/items/Tire.md)
|LootTable名|概要|
|----|----|
|[`tire_{tire}`](loot_tables/chests/items/)|Tire{tire}のチェスト|

## [spell](loot_tables/spells/)
|LootTable名|概要|
|----|----|
|[`get_some_mana`](loot_tables/spells/get_some_mana.json)|呪文Get Some Mana類を使用した際に呼び出される|
|[`random_loot_chance`](loot_tables/spells/random_loot_chance.json)|呪文Random Loot Chanceを使用した際に呼び出される|

## [weapons](loot_tables/weapons/)
各武器,呪文,魔法,杖のデータを保存したLootTable

> [`books/books`](loot_tables/weapons/books/books.json),[`rods/rods`](loot_tables/weapons/rods/rods.json),[`spells/spells`](loot_tables/weapons/spells/spells.json),[`swords/swords`](loot_tables/weapons/swords/swords.json)は全てのLootTableをまとめています

# [Predicate](predicates/)
|Predicate名|Conditionの内容|
|----|----|
|[`dont_have_any_items_of_off_hand`](predicates/dont_have_any_items_of_off_hand.json)|オフハンドに何もアイテムを持っていない|
|[`dont_have_any_items`](predicates/dont_have_any_items.json)|メインハンドに何もアイテムを持っていない|
|[`is_sneaking`](predicates/is_sneaking.json)|スニークしている|
|[`random_set`](predicates/random_set.json)|チェストの散らばり具合|

## [items](predicates/items/)
### [operator/](predicates/items/operator/)[buttons](predicates/items/operator/buttons/)
|Predicate名|Conditionの内容|
|----|----|
|[`{Button名}`](predicates/items/operator/buttons/)|{Button名}を持っている|

### [weapons/](predicates/items/weapons/)[magics](predicates/items/weapons/magics/)
|Predicate名|Conditionの内容|
|----|----|
|[`{Weapon名}`](predicates/items/weapons/magics/)|{Weapon名}を持っている|

### [weapons/](predicates/items/weapons/)[swords/](predicates/items/weapons/swords/)[random](predicates/items/weapons/swords/random/)
|Predicate名|Conditionの内容|
|----|----|
|[`{Sword名}`](predicates/items/weapons/swords/random/)|ランダムイベントの発生具合|

# [Tag](tags/)
## [blocks](tags/blocks/)
|Tag名|定義|
|----|----|
|[`as_air`](tags/blocks/as_air.json)|空気ブロックとして扱うブロック|