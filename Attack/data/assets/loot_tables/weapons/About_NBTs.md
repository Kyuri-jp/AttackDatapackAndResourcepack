# ItemTags
本データパックはアイテムの判別に独自nbtタグを使用しています。nbtタグの一覧は以下の通りです。
|nbtタグ|型|概要|
|----|----|----|
|SwordTag|String|剣,杖の種類|
|SpellTag|String|呪文の種類|
|BookTag|String|「本」の種類|
|Element|String|「本」が持っている属性|
|MagicBook|Boolean|魔法に使用する「本」かどうか|
|Spell|Boolean|呪文かどうか|
|Rod|Boolean|杖かどうか|
|Mana|Boolean|マナかどうか|

## 補足
`Element`に保存される値は以下の通りです。
1. Air
2. Dirt
3. Fire
4. Water
