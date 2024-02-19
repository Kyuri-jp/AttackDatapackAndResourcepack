# Discription
## Storages
本データパックで使用されるストレージは全て`attack:`という名前空間を使用しています
|ストレージ名|保存されるデータ|
|----|----|
|booleans|true,falseのboolean形式のデータ|
|registry|計算,MPの最大値,バージョンを管理するデータ|
|settings|呪文の使用マナ,魔法の使用MP等のゲームに関する設定系のデータ|
|messages|マナ不足,MP不足時等に発生するイベントのメッセージのデータ|

### 補足
- `core:set_values`:射程,使用MP等はこのファイルを参照してください。
- 全てのデータは`Main`に保存されています
  - つまり`Main`を消去すれば全てのデータが消去されます
- `attack:registory`に保存されている`ResourcePackVersion`には対応しているリソースパックのバージョンを記入してください
  - **`registory`を変更する場合は十分注意してください。**
- `settings`に保存されているデータには多く分けて`Default`,`Custom`の2種類があります
  1. `Default`:設定のデフォルト値です。`core:copy_default_settings`が呼び出された場合,`Default`をコピーした`Custom`が生成されます
  2. `Custom`:プレイヤーが安全にに操作することができる値です。operatorタグを持っているプレイヤーに渡される**Setting**というアイテムで設定できる値があります
    > 基本的に`Custom`のデータを変更するようにしましょう。
