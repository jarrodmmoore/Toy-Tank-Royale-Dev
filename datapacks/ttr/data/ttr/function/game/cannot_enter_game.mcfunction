execute at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1.8
tellraw @s ["",{"text":"Sorry, the game is full!","color":"red"},{"text":" (player limit is set to ","color":"gray"},{"score":{"name":"#opt_playerlimit","objective":"value"},"color":"gray"},{"text":")","color":"gray"}]

scoreboard players set @s shootCooldown 20