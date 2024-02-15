# Attack-Datapack

## About
マインクラフトのマップであるAttack!のデータパックです

# About modification
DatapackのLicenseはCC0なので自由に改造,再配布をしていただいて構いません。ただし,無改造のままでの配布はお控えください。

**CC0は私が著作者であることを放棄するわけではありません。**
> 再配布する場合はforkをしてくださると見つけやすいので助かります。

ResourcePackのLicenseはMIT Licenseなので改造,再配布をしていただいて構いません。だたし,著作権を明記することを忘れないでください。
**`Copyright (c) 2024 Kyuri`**

# About Folders

## core
`minecraft:functions/tags/tick`,`minecraft:functions/tags/load`で呼び出される関数や,それに関わる関数が定義されています。

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
- `storage:registory`に保存されている`ResourcePackVersion`には対応しているリソースパックのバージョンを記入してください
  - **`registory`を変更する場合は十分注意してください。**
- `settings`に保存されているデータには多く分けて`Default`,`Custom`の2種類があります
  1. `Default`:設定のデフォルト値です。`core:copy_default_settings`が呼び出された場合,`Default`をコピーした`Custom`が生成されます
  2. `Custom`:プレイヤーが安全にに操作することができる値です。operatorタグを持っているプレイヤーに渡される**Setting**というアイテムで設定できる値があります
    > 基本的に`Custom`のデータを変更するようにしましょう。

## dev
開発者向けの関数が定義されています。作者向けとも言えます。

## libs
advancementsやpredicateが定義されています。関数も定義されています。関数の動作は以下の通りです。
|関数名|動作|
|----|----|
|detect_death|プレイヤーが死亡した際に呼び出す関数を定義しています|
|player_count|プレイヤーの数,チームのメンバー数を取得しています|
|show_player_info|実行者の試合に関する情報を表示します|
|synchronize_xp_and_mp|MPと経験値バーを連動させます|

### scoreboard
#### player_count
player_countで取得された値は全てスコアボード`datas`に記録されます。スコアホルダーは以下の通りです。
|スコアホルダー名|概要|
|----|----|
|$scores.count.players|ワールドに参加しているすべてのプレイヤー数|
|$scores.count.players.red|ワールドに参加しているすべての`redTeam`チームに参加しているプレイヤー数|
|$scores.count.players.blue|ワールドに参加しているすべての`blueTeam`チームに参加しているプレイヤー数|
|$scores.count.players.watch|ワールドに参加しているすべての`watch`チームに参加しているプレイヤー数|

## loots
アイテムに関するloot_tablesが定義されています。

### ItemTags
本データパックはアイテムの判別に独自nbtタグを使用しています。nbtタグの一覧は以下の通りです。
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
functions/tags/load,tickが定義されています。呼び出される関数は以下の通りです。
|ファイル名|呼び出される関数|
|----|----|
|tick.json|core:tick|
|load.json|core:load|

## scores
キル数カウント,チーム得点等に関する関数が定義されています。関数の動作は以下の通りです。
|関数名|動作|
|----|----|
|count/killed/add/any_player_killed|プレイヤーを倒した際に呼び出されます|
|count/killed/add/reds_score|`redTeam`に得点を1加算します|
|count/killed/add/blues_score|`blueTeam`に得点を1加算します|
|gui_bars/settings/reload|設定に関するGUI(bossbar)を再読み込みします|
|list/team/set|TeamListをセットします|

## systems
ゲームの根幹にかかわる関数が定義されています。改造する際はここの関数を変更することが多いと思います。

## util
ちょっと便利な関数が定義されています。作者用です。

# Cautions on modification
データパックを改造する場合は以下のことに注意してください
- `storage:registry`の`Main.Sys.Version` `Main.Sys.DatapackVersion` `Main.Sys.ResourcepackVersion`は改造版であることが分かるように変更すること
  > 変更は改造した要素だけで構いません。(例:ワールドだけ改造した->Versionだけ変更,デタパとリソパを改造した->DatapackVersionとResourcepackVersionを変更)
- 無改造での状態での再配布はお控えください
- 著作権表記は不必要ですが,「原作者:Kyuri」等の情報を書いてくださると作者が喜びます。
- 自作発言はお控えください。

# Environment
## Code Editor
[Visual Studio Code](https://github.com/microsoft/vscode)

### Extensions
[Datapack Helper Plus](https://github.com/SpyglassMC/vscode-datapack)

[MC Datapack Utility](https://github.com/ChenCMD/MC-Datapack-Utility)

## Tools
[Data Pack Generators](https://misode.github.io/)

# License
[Datapack](attack) : [Creative Commons Zero v1](attack/licence.txt)

[ResourcePack](attack_resource) : [MIT License](attack_resource/licence.txt)
