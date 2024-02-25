#> core:load/add/teams
#
# Teamを追加します
#
# @within function core:load/

# set
    ## create
        team add RedTeam
        team add BlueTeam
        team add Watch
        team add preparation
    ## setting
        team modify RedTeam color red
        team modify BlueTeam color blue
        team modify Watch color gray
        team modify RedTeam nametagVisibility hideForOtherTeams
        team modify BlueTeam nametagVisibility hideForOtherTeams
        team modify Watch nametagVisibility hideForOtherTeams
        team modify preparation friendlyFire false