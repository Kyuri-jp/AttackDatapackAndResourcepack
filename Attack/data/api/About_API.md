# API
プレイヤーの情報や,例外通知などの関数が定義されています。

## Player Count
|Function名|定義|
|----|----|
|`player/player_count`|プレイヤーの人数,チームの人数を`Datas`オブジェクトに記録する|

## Error Notice
|Function名|定義|
|----|----|
|`system/util/error_notice/`|例外を通知する|

### Storage
`error:info`
|Path|型|保存する内容|
|----|----|----|
|`Level`|String|例外のレベル(error,warn,info)|
|`Path`|String|関数のリソースパス|
|`Message`|String|適当なメッセージ|
|`StackTrace`|String|適当なスタックトレース(詳細)|

> Storage`error:info`に`Level` `Path` `Message` `StackTrace`を保存してから呼び出してください

## Sphere Particle
|Function名|定義|
|----|----|
|`api:system/util/sphere_particle/`|円形にパーティクルを表示する|
