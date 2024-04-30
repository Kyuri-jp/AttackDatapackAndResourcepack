# Core
load処理やtick処理に関わる関数が定義されています

|Function名|定義|
|----|----|
|`tick`|`minecraft:tags/functions/tick`に定義されている関数|

## installed
|Function名|定義|
|----|----|
|`message`|load後に表示するメッセージ|

## load
|Function名|定義|
|----|----|
|`.mcfunction`|`minecraft:tags/functions/load`に定義されている関数|
|`add/bossbars`|BossBarの追加|
|`add/scoreboards`|ScoreBoardの追加|
|`add/teams`|Teamの追加|
|`set/gamerules`|Gameruleの変更|
|`set/bossbar/max`|BossBarの最大値を設定|

## storagefunctions/storage/
Storageについては[こちら](functions/storage/About_Storages.md)

`attack:registry`に定義されるVersionsについては[こちら](functions/storage/About_Versions.md)

|Function名|定義|
|----|----|
|`copy_default_settings`|`attack:setting`の`Main.Default`を`Main.Custom`としてコピーする|
|`create_storages`|Storageの作成|
|`initialize_storage_datas`|Storageの初期化|
|`set_values`|Storageの値を定義|
