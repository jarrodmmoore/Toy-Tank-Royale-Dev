execute if score #timeSec value matches 10.. run scoreboard players add #timeSec10 value 1
execute if score #timeSec value matches 10.. run scoreboard players remove #timeSec value 10

execute if score #timeSec10 value matches 6.. run scoreboard players add #timeMin value 1
execute if score #timeSec10 value matches 6.. run scoreboard players remove #timeSec10 value 6

execute if score #timeSec value matches 10.. run function ttr:gamemodes/timer_sort