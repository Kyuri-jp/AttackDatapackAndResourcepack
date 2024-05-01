> 基本的に使用する関数は`.mcfunction`です。他の関数はこの関数から自動的に呼び出されます

# died
|Function名|定義|
|----|----|
|`.mcfunction`|以下の2つの関数を呼び出す関数|
|`playing`|実行者に`game.player.playing`のTagがある場合に呼び出されます|
|`set_timer`|クールダウンを設定します|

# end
|Function名|定義|
|----|----|
|`.mcfunction`|試合が終了した際の処理(以下の2つの関数を呼び出す)|
|`judgment/`|
|`judgment/ex`|勝敗判定(exhibition game)|

# ex,main_game,preparation
|Function名|定義|
|----|----|
|`.mcfunction`|タイマーを設定(以下の関数を呼び出す)|
|`start_timer`|タイマーをスタート|

# respawn
|Function名|定義|
|----|----|
|`.mcfunction`|復活時に呼び出される|
|`cool_time/count_down`|クールタイムのタイマーをスタート|
|`cool_time/info`|効果音,テキストを表示|

> `.mcfunction`から他の関数は呼び出されません

# scope_over
|Function名|定義|
|----|----|
|`.mcfunction`|フィールドの外に落下した時に呼び出される|
|`detect`|攻撃者を特定します|
|`preparation`|準備中にフィールド外に落下した時に呼び出される|

# start
|Function名|定義|
|----|----|
|`.mcfunction`他の関数を呼び出す|
|`gane/`|プレイヤー,構造物,ScoreBoardをリセットする|
|`gane/set_player_id`|プレイヤーごとに固有IDを割り振る|
|`gane/set_spawn_point`|Teamごとにスポーン位置を設定する|

# structure
|Function名|定義|
|----|----|
|`.mcfunction`|他の関数を呼び出す(`/blocks/chest/*`以外)|
|`blocks/pressures/set`|感圧版を設置する|
|`blocks/chests/`|チェストを再設置する|
|`blocks/chests/break/`|チェストを破壊する|
|`blocks/chests/set/`|固定チェストを設置し,スコアをリセットする|
|`blocks/chests/set/random/`|チェストを設置する|