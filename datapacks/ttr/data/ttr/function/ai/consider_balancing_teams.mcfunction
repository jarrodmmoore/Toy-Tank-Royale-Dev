#force a bot from the bigger team to reset and get new team assignment

#move a random blue bot to red
execute if score #remember_team_advantage value matches ..-2 as @e[limit=1,sort=random,tag=ai,type=zombie,tag=blueTeam] run tag @s add ai_need_reset

#move a random red bot to blue
execute if score #remember_team_advantage value matches 2.. as @e[limit=1,sort=random,tag=ai,type=zombie,tag=redTeam] run tag @s add ai_need_reset