# Minecraft
`tags/damage_type`や`tags/functions`を定義しています

## [LootTable](loot_tables/)
### [item](loot_tables/item/)
|LootTable名|概要|
|----|----|
|[`all_potion`](loot_tables/item/all_potion.json)|以下の3つのLootTable|
|[`potion`](loot_tables/item/potion.json)|普通のポーション(デバフ抜き)|
|[`splash_potion`](loot_tables/item/splash_potion.json)|全てのスプラッシュポーション|
|[`lingering_potion`](loot_tables/item/lingering_potion.json)|全ての残留ポーション|

## [Tag](tags/)
### [functions](tags/functions/)
|Tag名|定義している関数|
|----|----|
|[`load`](tags/functions/load.json)|[`core:load/`](/Attack/data/core/functions/load/.mcfunction)|
|[`tick`](tags/functions/tick.json)|[`core:tick`](/Attack/data/core/functions/tick.mcfunction)|

### [damage_type](tags/damage_type/)
|Tag名|効果|
|----|----|
|[`bypasses_cooldown`](tags/damage_type/bypasses_cooldown.json)|クールダウンを無視してダメージを与える|
|[`is_explosion`](tags/damage_type/is_explosion.json)|爆発として扱う|
|[`is_lightning`](tags/damage_type/is_lightning.json)|雷として扱う|