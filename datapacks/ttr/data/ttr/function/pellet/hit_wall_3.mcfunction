#explode if not inside breakable block
execute unless block ~ ~1 ~ #ttr:breakable run function ttr:pellet/fiery_burst

#breakable blocks
execute unless entity @e[distance=..2,tag=player_char] if block ~ ~1 ~ #ttr:breakable run tp @s ^ ^ ^-.9
execute if block ~ ~1 ~ #ttr:breakable if block ~ ~2 ~ barrier run setblock ~ ~1 ~ barrier destroy
execute if block ~ ~1 ~ #ttr:breakable run setblock ~ ~1 ~ air destroy

#TEST
#reflection on first hit
#execute unless entity @s[scores={bounceCooldown=1..}] if score #dx value > #dz value run function ttr:pellet/reflect/try_x
#execute unless entity @s[scores={bounceCooldown=1..}] unless score #dx value > #dz value run function ttr:pellet/reflect/try_z