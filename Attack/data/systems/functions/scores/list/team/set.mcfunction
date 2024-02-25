#> systems:scores/list/team/set
#
# TeamListを更新します
#
# @within systems:wait_room/team/set/
# @writes
# score @a[team=RedTeam] TeamList 3
# score @a[team=BlueTeam] TeamList 2
# score @a[team=WatchTeam] TeamList 1
# score @a[team=!RedTeam,team=!BlueTeam,team=!Watch] TeamList 0

# list set
    scoreboard players set @a[team=RedTeam] TeamList 3
    scoreboard players set @a[team=BlueTeam] TeamList 2
    scoreboard players set @a[team=Watch] TeamList 1
    scoreboard players set @a[team=!RedTeam,team=!BlueTeam,team=!Watch] TeamList 0