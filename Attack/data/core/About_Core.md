# Core
load処理やtick処理に関わる関数が定義されています

|Function名|定義|
|----|----|
|[`tick`](functions/tick.mcfunction)|[`minecraft:tags/functions/tick`](/Attack/data/minecraft/tags/functions/tick.json)に定義されている関数|

## [installed](functions/installed/)
|Function名|定義|
|----|----|
|[`message`](functions/installed/message.mcfunction)|load後に表示するメッセージ|

## [load](functions/load/)
|Function名|定義|
|----|----|
|[`.mcfunction`](functions/load/.mcfunction)|[`minecraft:tags/functions/load`](/Attack/data/minecraft/tags/functions/load.json)に定義されている関数|
|[`add/bossbars`](functions/load/add/bossbars.mcfunction)|BossBarの追加|
|[`add/scoreboards`](functions/load/add/scoreboards.mcfunction)|ScoreBoardの追加|
|[`add/teams`](functions/load/add/teams.mcfunction)|Teamの追加|
|[`set/gamerules`](functions/load/set/gamerules.mcfunction)|Gameruleの変更|
|[`set/bossbar/max`](functions/load/set/bossbar/max.mcfunction)|BossBarの最大値を設定|

## [storage](functions/storage/)
Storageについては[こちら](functions/storage/About_Storages.md)

`storage:registry`に定義されるVersionsについては[こちら](functions/storage/About_Versions.md)

|Function名|定義|
|----|----|
|[`copy_default_settings`](functions/storage/copy_default_settings.mcfunction)|`storage:setting`の`Main.Default`を`Main.Custom`としてコピーする|
|[`create_storages`](functions/storage/create_storages.mcfunction)|Storageの作成|
|[`initialize_storage_datas`](functions/storage/initialize_storage_datas.mcfunction)|Storageの初期化|
|[`set_values`](functions/storage/set_values.mcfunction)|Storageの値を定義|
