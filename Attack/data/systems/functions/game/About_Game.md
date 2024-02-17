> 基本的に使用する関数は`.mcfunction`です。他の関数はこの関数から自動的に呼び出されます

# [died](died/)
|Function名|定義|
|----|----|
|[`.mcfunction`](died/.mcfunction)|以下の2つの関数を呼び出す関数|
|[`playing`](died/playing.mcfunction)|実行者に`game.player.playing`のTagがある場合に呼び出されます|
|[`set_timer`](died/set_timer.mcfunction)|クールダウンを設定します|

# [end](end/)
|Function名|定義|
|----|----|
|[`.mcfunction`](end/.mcfunction)|試合が終了した際の処理(以下の2つの関数を呼び出す)|
|[`judgment/`](end/judgment/.mcfunction)|勝敗判定|
|[`judgment/ex`](end/judgment/ex.mcfunction)|勝敗判定(exhibition game)|

# [ex](ex/),[main_game](main_game/),[preparation](preparation/)
|Function名|定義|
|----|----|
|`.mcfunction`|タイマーを設定(以下の関数を呼び出す)|
|`start_timer`|タイマーをスタート|

# [respawn](respawn/)
|Function名|定義|
|----|----|
|[`.mcfunction`](respawn/.mcfunction)|復活時に呼び出される|
|[`cool_time/count_down`](respawn/cool_time/count_down.mcfunction)|クールタイムのタイマーをスタート|
|[`cool_time/info`](respawn/cool_time/info.mcfunction)|効果音,テキストを表示|

> `.mcfunction`から他の関数は呼び出されません

# [scope_over](scope_over/)
|Function名|定義|
|----|----|
|[`.mcfunction`](scope_over/.mcfunction)|フィールドの外に落下した時に呼び出される|

# [start](start/)
|Function名|定義|
|----|----|
|[`.mcfunction`](start/.mcfunction)|カウントダウンをスタートする(他の関数を呼び出す)|
|[`gane/`](start/game/.mcfunction)|プレイヤー,構造物,ScoreBoardをリセットする|
|[`gane/set_player_id`](start/game/set_player_id.mcfunction)|プレイヤーごとに固有IDを割り振る|
|[`gane/set_spawn_point`](start/game/set_spawn_point.mcfunction)|Teamごとにスポーン位置をせっているする|

# [structure/](structure/)[set](structure/set/)
|Function名|定義|
|----|----|
|[`.mcfunction`](structure/set/.mcfunction)|他の関数を呼び出す([structure/set/blocks/chets](structure/set/blocks/chests/)以外)|
|[`blocks/pressures/set`](structure/set/blocks/pressures/set.mcfunction)|感圧版を設置する|
|[`blocks/chests/`](structure/set/blocks/chests/.mcfunction)|チェストを再設置する|
|[`blocks/chests/break/`](structure/set/blocks/chests/break/.mcfunction)|チェストを破壊する|
|[`blocks/chests/set/`](structure/set/blocks/chests/set/.mcfunction)|固定チェストを設置し,スコアをリセットする|
|[`blocks/chests/set/random/`](structure/set/blocks/chests/set/random/.mcfunction)|チェストを設置する|