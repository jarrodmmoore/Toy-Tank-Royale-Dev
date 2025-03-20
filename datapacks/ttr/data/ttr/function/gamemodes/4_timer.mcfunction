scoreboard players remove #time_remaining value 1

execute if score #time_remaining value matches 1.. run bossbar set tank_bbar players @a
execute store result bossbar tank_bbar value run scoreboard players get #time_remaining value

#get time in a displayable format
scoreboard players set #20 value 20

scoreboard players set #timeMin value 0
scoreboard players set #timeSec10 value 0

scoreboard players operation #timeSec value = #time_remaining value
scoreboard players operation #timeSec value /= #20 value

function ttr:gamemodes/timer_sort

#show time on bossbar
bossbar set tank_bbar name ["",{translate:"ttr.time_remaining",bold:true,color:"white"},{score:{name:"#timeMin",objective:"value"},bold:true,color:"white"},{text:":",bold:true,color:"white"},{score:{name:"#timeSec10",objective:"value"},bold:true,color:"white"},{score:{name:"#timeSec",objective:"value"},bold:true,color:"white"}]


#time up with no sudden death? end the game
execute if score #time_remaining value matches ..0 if score #opt_suddendeath value matches 0 run scoreboard players set #elim_timeout value 60

#go to sudden death if time's up
execute if score #time_remaining value matches ..0 if score #opt_suddendeath value matches 1 run function ttr:gamemodes/4_sudden_death_start