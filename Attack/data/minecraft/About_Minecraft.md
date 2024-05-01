# Minecraft
`tags/damage_type`や`tags/functions`を定義しています

## LootTable
### item
|LootTable名|概要|
|----|----|
|`all_potion`|以下の3つのLootTable|
|`potion`|普通のポーション(デバフ抜き)|
|`splash_potion`|全てのスプラッシュポーション|
|`lingering_potion`|全ての残留ポーション|

## Tag
### functions
|Tag名|定義している関数|
|----|----|
|`load`|`core:load/`|
|`tick`|`core:tick`|

### damage_type
|Tag名|効果|
|----|----|
|`bypasses_cooldown`|クールダウンを無視してダメージを与える|
|`is_explosion`|爆発として扱う|
|`is_lightning`|雷として扱う|