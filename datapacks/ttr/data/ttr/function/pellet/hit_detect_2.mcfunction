#execute positioned ~ ~.85 ~ if entity @e[distance=..1,tag=p_can_hit,tag=pellet,tag=!p_self,type=armor_stand] run tag @e[limit=1,sort=nearest,tag=!p_self,tag=p_can_hit,tag=pellet,type=armor_stand] add target1
#execute positioned ~ ~.18 ~ if entity @e[distance=..1,tag=p_can_hit,tag=player_char,tag=!p_self,tag=!player_ded,type=zombie] run tag @e[limit=1,sort=nearest,tag=!p_self,tag=p_can_hit,tag=player_char,type=zombie] add target2

#execute if entity @e[distance=..5,tag=target1,type=armor_stand,tag=pellet] run function ttr:pellet/pellets_collide
#execute if entity @e[distance=..5,tag=target2,tag=player_char,tag=!player_ded,type=zombie] positioned ^ ^ ^-1 run function ttr:pellet/hit_player

#tag @e[distance=..5,tag=target1] remove target1
#tag @e[distance=..5,tag=target2] remove target2

#check for players only! not pellets
execute if entity @s[tag=pa1] positioned ~ ~.18 ~ if entity @e[tag=pa1,distance=..1,tag=p_can_hit,type=zombie,tag=player_char,tag=!p_self,tag=!player_ded] run function ttr:pellet/hit_detect/1_confirm_target2_pa1
execute if entity @s[tag=pa2] positioned ~ ~.18 ~ if entity @e[tag=pa2,distance=..1,tag=p_can_hit,type=zombie,tag=player_char,tag=!p_self,tag=!player_ded] run function ttr:pellet/hit_detect/1_confirm_target2_pa2
execute if entity @s[tag=pa3] positioned ~ ~.18 ~ if entity @e[tag=pa3,distance=..1,tag=p_can_hit,type=zombie,tag=player_char,tag=!p_self,tag=!player_ded] run function ttr:pellet/hit_detect/1_confirm_target2_pa3
execute if entity @s[tag=pa4] positioned ~ ~.18 ~ if entity @e[tag=pa4,distance=..1,tag=p_can_hit,type=zombie,tag=player_char,tag=!p_self,tag=!player_ded] run function ttr:pellet/hit_detect/1_confirm_target2_pa4
execute if entity @s[tag=pa5] positioned ~ ~.18 ~ if entity @e[tag=pa5,distance=..1,tag=p_can_hit,type=zombie,tag=player_char,tag=!p_self,tag=!player_ded] run function ttr:pellet/hit_detect/1_confirm_target2_pa5
execute if entity @s[tag=pa6] positioned ~ ~.18 ~ if entity @e[tag=pa6,distance=..1,tag=p_can_hit,type=zombie,tag=player_char,tag=!p_self,tag=!player_ded] run function ttr:pellet/hit_detect/1_confirm_target2_pa6
execute if entity @s[tag=pa7] positioned ~ ~.18 ~ if entity @e[tag=pa7,distance=..1,tag=p_can_hit,type=zombie,tag=player_char,tag=!p_self,tag=!player_ded] run function ttr:pellet/hit_detect/1_confirm_target2_pa7
execute if entity @s[tag=pa8] positioned ~ ~.18 ~ if entity @e[tag=pa8,distance=..1,tag=p_can_hit,type=zombie,tag=player_char,tag=!p_self,tag=!player_ded] run function ttr:pellet/hit_detect/1_confirm_target2_pa8
execute if entity @s[tag=pa9] positioned ~ ~.18 ~ if entity @e[tag=pa9,distance=..1,tag=p_can_hit,type=zombie,tag=player_char,tag=!p_self,tag=!player_ded] run function ttr:pellet/hit_detect/1_confirm_target2_pa9