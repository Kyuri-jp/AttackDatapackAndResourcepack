# Libs
ゲームに必要なLibraryが定義されています

## Functions
### player_item_storage
プレイヤーのInventoryを記録します

|Function名|定義|
|----|----|
|`get`|setの実行者に記録したアイテムを与える|
|`set`|実行者のInventoryを記録|
|`entity/remove_all_tag`|一時的に付与したTagを全て削除|
|`entity/same_uuid`|記録されたUUIDからプレイヤーを特定|
|`inventory/summon`|記録されたデータからアイテムを召喚|
|`inventory/slot/armor`|防具をセット|
|`inventory/slot/main`|メインハンド,インベントリ内のアイテムを召喚|
|`inventory/slot/off`|オフハンドをセット|

> 基本的に使用する関数は`set`と`get`です。他の関数はこれらの関数から自動的に呼び出されます

### show_player_info
プレイヤーに関する情報を表示します

|Function名|定義|
|----|----|
|`.mcfunction`|Kill数,Death数,Mana数を`Player.Playing`のTagを持っているプレイヤーに表示|
|`get_cool_down_time`|実行者の`CoolDownCounter`の値を取得|

> `get_cool_down_time`は`.mcfunction`の実行者に`Player.CoolDownNow`のTagが付いている場合に呼び出されます

### synchronize_xp_and_mp
経験値バーとMPを同期します

|Function名|定義|
|----|----|
|`.mcfunction`|以降の関数を呼び出し|
|`calculate`|与えるポイントを計算|
|`set_level`|経験値レベルをセット|
|`set_point`|経験値ポイントをセット|

> 基本的に使用する関数は`.mcfunction`です。他の関数はこれらの関数から自動的に呼び出されます

## Predicates
### player_item_storage
|Function名|定義|
|----|----|
|`have_all_tag`|`Pis.MatchUUID.Lv1`~`Pis.MatchUUID.Lv4`までのタグを持っている|
