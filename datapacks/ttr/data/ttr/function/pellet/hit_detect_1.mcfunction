#why the index here?
#to make distance calculations less intense
#basically: our pellet only checks for collision with objects in the same area (1/9 of the board)
#not such a big deal with smaller player counts, but makes a difference when there's tons of objects faffing about
#...unless dozens of players are all battling in the same tile. but that only happens under wacky game settings :P

#actually-- tbh i don't know if this REALLY improves performance much. seems worth a shot, though

execute if entity @s[tag=pa1] run function ttr:pellet/hit_detect/1_pa1
execute if entity @s[tag=pa2] run function ttr:pellet/hit_detect/1_pa2
execute if entity @s[tag=pa3] run function ttr:pellet/hit_detect/1_pa3
execute if entity @s[tag=pa4] run function ttr:pellet/hit_detect/1_pa4
execute if entity @s[tag=pa5] run function ttr:pellet/hit_detect/1_pa5
execute if entity @s[tag=pa6] run function ttr:pellet/hit_detect/1_pa6
execute if entity @s[tag=pa7] run function ttr:pellet/hit_detect/1_pa7
execute if entity @s[tag=pa8] run function ttr:pellet/hit_detect/1_pa8
execute if entity @s[tag=pa9] run function ttr:pellet/hit_detect/1_pa9