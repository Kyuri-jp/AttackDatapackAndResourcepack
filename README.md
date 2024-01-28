# Attack-Datapack

## About
マインクラフトのマップであるAttack!のデータパックです

# 改造について
DatapackのLicenseはCC0なので自由に改造,再配布をしていただいて構いません。

ResourcePackのLicenseはMIT Licenseなので改造,再配布をしていただいて構いません。だたし,著作権を明記することを忘れないでください。
`Copyright (c) 2024 Kyuri`

# About Folders

## core
`minecraft:functions/tags/tick`,`minecraft:functions/tags/load`で呼び出される関数や,それにかかわる関数が保存されています。

Storageに関するデータ等もここで定義されます

### Storages
本データパックで使用されるストレージは全て`storage:`という名前空間を使用しています
|ストレージ名|保存されるデータ|
|----|----|
|booleans|true,falseのboolean形式のデータ|
|registry|計算,MPの最大値,バージョンを管理するデータ|
|settings|呪文の使用マナ,魔法の使用MP等のゲームに関する設定系のデータ|
|messages|マナ不足,MP不足時等に発生するイベントのメッセージのデータ|

#### 補足
- `core:set_values`:射程,使用MP等はこのファイルを参照してください。
- 全てのデータは`Main`に保存されています
  - つまり`Main`を消去すれば全てのデータが消去されます
- `registory`を変更する場合は十分注意してください。
  - ただし,`Main.Sys.Version` `Main.Sys.DatapackVersion`は改造版であることが分かるように変更すること
- `settings`に保存されているデータには多く分けて`Default`,`Custom`の2種類があります
  1. `Default`:設定のデフォルト値です。`core:copy_default_settings`が呼び出された場合,`Default`をコピーした`Custom`が生成されます
  2. `Custom`:プレイヤーが安全にに操作することができる値です。operatorタグを持っているプレイヤーに渡される**Setting**というアイテムで設定できる値があります
    > 基本的に`Custom`のデータを変更するようにしましょう。
    > 
## dev
開発者向けの関数が保存されています。作者向けとも言えます。

## libs
advancementsやpredicateが保存されています。関数がも保存されています。関数の役割は以下の通りです。
|関数名|役割|
|----|----|
|detect_death|プレイヤーが死亡した際に呼び出す関数を定義しています|
|player_count|プレイヤーの数,チームのメンバー数を取得しています|
|show_player_info|実行者の試合に関する情報を表示します|
|synchronize_xp_and_mp|MPと経験値バーを連動させます|

### scoreboard
#### player_count
player_countで取得された値は全てスコアボード`datas`に記録されます
|スコアホルダー名|概要|
|----|----|
|$attack.scores.count.players|ワールドに参加しているすべてのプレイヤー数|
|$attack.scores.count.players.red|ワールドに参加しているすべての`redTeam`チームに参加しているプレイヤー数|
|$attack.scores.count.players.blue|ワールドに参加しているすべての`blueTeam`チームに参加しているプレイヤー数|
|$attack.scores.count.players.watch|ワールドに参加しているすべての`watch`チームに参加しているプレイヤー数|

## loots
アイテムに関するloot_tablesが定義されています
### ItemTags
本データパックはアイテムの判別に独自nbtタグを使用しています。

nbtタグの一覧は以下の通りです。
|nbtタグ|型|概要|
|----|----|----|
|WeaponTag|String|剣,杖の種類|
|Spell|Boolean|呪文かどうか|
|SpellTag|String|呪文の種類|
|MagicBook|Boolean|魔法に使用する「本」かどうか|
|BookTag|String|「本」の種類|
|Element|String|「本」が持っている属性|

#### 補足
`Element`に保存される値は以下の通りです。
1. Air
2. Dirt
3. Fire
4. Water

## minecraft


## How to Use
データパックを改造する場合は以下のことに注意してください

## License
[Dataoack](https://github.com/Kyuri-jp/AttackDatapack/blob/master/attack) : [Creative Commons Zero v1](https://github.com/Kyuri-jp/AttackDatapack/blob/master/attack/licence.txt)

[ResourcePack](https://github.com/Kyuri-jp/AttackDatapack/blob/master/attack_resource) : [MIT License](https://github.com/Kyuri-jp/AttackDatapack/blob/master/attack_resource/licence.txt)
