# Libs
ゲームに必要なLibraryが定義されています

## [Functions](functions/)
### [player_item_storage](functions/player_item_storage/)
プレイヤーのInventoryを記録します

|Function名|定義|
|----|----|----|
|[`get`](functions/player_item_storage/get.mcfunction)|setの実行者に記録したアイテムを与える|
|[`set`](functions/player_item_storage/set.mcfunction)|実行者のInventoryを記録|
|[`entity/remove_all_tag`](functions/player_item_storage/entity/remove_all_tag.mcfunction)|一時的に付与したTagを全て削除|
|[`entity/same_uuid`](functions/player_item_storage/entity/same_uuid.mcfunction)|記録されたUUIDからプレイヤーを特定|
|[`inventory/summon`](functions/player_item_storage/inventory/summon.mcfunction)|記録されたデータからアイテムを召喚|

> 基本的に使用する関数は`set`と`get`です。他の関数はこれらの関数から自動的に呼び出されます

### [show_player_info](functions/show_player_info/)
プレイヤーに関する情報を表示します

|Function名|定義|
|----|----|
|[`.mcfunction`](functions/show_player_info/.mcfunction)|Kill数,Death数,Mana数を`Player.Playing`のTagを持っているプレイヤーに表示|
|[`get_cool_down_time`](functions/show_player_info/get_cool_down_time.mcfunction)|実行者の`coolDownCounter`の値を取得|

> `get_cool_down_time`は`.mcfunction`の実行者に`Player.CoolDownNow`のTagが付いている場合に呼び出されます

### [synchronize_xp_and_mp](functions/synchronize_xp_and_mp/)
経験値バーとMPを同期します

|Function名|定義|
|----|----|
|[`.mcfunction`](functions/synchronize_xp_and_mp/.mcfunction)|以降の関数を呼び出し|
|[`calculate`](functions/synchronize_xp_and_mp/calculate.mcfunction)|与えるポイントを計算|
|[`set_level`](functions/synchronize_xp_and_mp/set_level.mcfunction)|経験値レベルをセット|
|[`set_point`](functions/synchronize_xp_and_mp/set_point.mcfunction)|経験値ポイントをセット|

> 基本的に使用する関数は`.mcfunction`です。他の関数はこれらの関数から自動的に呼び出されます

## [Predicates](predicates/)
### [player_item_storage](predicates/player_item_storage/)
|Function名|定義|
|----|----|
|[`have_all_tag`](predicates/player_item_storage/have_all_tag.json)|`Pis.MatchUUID.lv1`~`Pis.MatchUUID.lv4`までのタグを持っている|
