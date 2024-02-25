#> api:system/util/error_notice/
#
# エラーをチャット欄に送信します
#
# @api
# @input
# storage error:info Level (error,warn,info)
# storage error:info Path (resource path)
# storage error:info Message
# storage error:info StackTrace (more info)

# values check
    ## exists
        execute unless data storage error:info Level run tellraw @a [{"text": "Error>>","bold": true,"color": "dark_red"},{"text": "(api:system/util/error_notice)","bold": false},{"text": "Levelが存在しません (error:info \"Level\" is not found)"}]
        execute unless data storage error:info Path run tellraw @a [{"text": "Error>>","bold": true,"color": "dark_red"},{"text": "(api:system/util/error_notice)","bold": false},{"text": "Pathが存在しません (error:info \"Path\" is not found)"}]
        execute unless data storage error:info Message run tellraw @a [{"text": "Error>>","bold": true,"color": "dark_red"},{"text": "(api:system/util/error_notice)","bold": false},{"text": "Messageが存在しません (error:info \"Message\" is not found)"}]
        execute unless data storage error:info StackTrace run tellraw @a [{"text": "Error>>","bold": true,"color": "dark_red"},{"text": "(api:system/util/error_notice)","bold": false},{"text": "StackTraceが存在しません (error:info \"StackTrace\" is not found)"}]

        execute unless data storage error:info Level run return fail
        execute unless data storage error:info Path run return fail
        execute unless data storage error:info Message run return fail
        execute unless data storage error:info StackTrace run return fail

    ## level
        execute unless data storage error:info {Level:"error"} unless data storage error:info {Level:"warn"} unless data storage error:info {Level:"info"} run tellraw @a [{"text": "Error>>","bold": true,"color": "dark_red"},{"text": "(api:system/util/error_notice)","bold": false},{"text": "Levelの値が間違っています (error:info \"Level\" is not correct)"}]

# show message
    execute if data storage error:info {Level:error} run tellraw @a [{"text": "Error>>","bold": true,"color": "dark_red"},{"text": "(","bold": false,"color": "white"},{"nbt":"Path","storage": "error:info","bold": false,"color": "white"},{"text": ")","bold": false,"color": "white"},{"nbt":"Message","storage": "error:info","bold": false,"color": "white"},{"text": " (","bold": false,"color": "gray"},{"nbt":"StackTrace","storage": "error:info","bold": false,"color": "gray"},{"text": ")","bold": false,"color": "gray"}]
    execute if data storage error:info {Level:warn} run tellraw @a [{"text": "Warn>>","bold": true,"color": "yellow"},{"text": "(","bold": false,"color": "white"},{"nbt":"Path","storage": "error:info","bold": false,"color": "white"},{"text": ")","bold": false,"color": "white"},{"nbt":"Message","storage": "error:info","bold": false,"color": "white"},{"text": " (","bold": false,"color": "gray"},{"nbt":"StackTrace","storage": "error:info","bold": false,"color": "gray"},{"text": ")","bold": false,"color": "gray"}]
    execute if data storage error:info {Level:info} run tellraw @a [{"text": "Info>>","bold": true,"color": "aqua"},{"text": "(","bold": false,"color": "white"},{"nbt":"Path","storage": "error:info","bold": false,"color": "white"},{"text": ")","bold": false,"color": "white"},{"nbt":"Message","storage": "error:info","bold": false,"color": "white"},{"text": " (","bold": false,"color": "gray"},{"nbt":"StackTrace","storage": "error:info","bold": false,"color": "gray"},{"text": ")","bold": false,"color": "gray"}]

# init
    data remove storage error:info Level
    data remove storage error:info Path
    data remove storage error:info Message
    data remove storage error:info StackTrace