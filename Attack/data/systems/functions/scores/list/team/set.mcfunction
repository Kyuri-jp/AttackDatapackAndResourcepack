#> systems:scores/list/team/set
# @within systems:wait_room/team/set

# list set
    scoreboard players set @a[team=redTeam] TeamList 3
    scoreboard players set @a[team=blueTeam] TeamList 2
    scoreboard players set @a[team=watch] TeamList 1
    scoreboard players set @a[team=!redTeam,team=!blueTeam,team=!watch] TeamList 0