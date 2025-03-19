#bye bye bye bye
tag @s add bye_felicia
execute if entity @s[scores={burstStreak=5..}] as @a unless entity @s[scores={shutUp=1..}] run tellraw @s ["",{text:" "},{selector:"@a[limit=1,tag=winner_chicken]",italic:true},{text:"'s burst steak ",italic:true},{text:"(",color:"green"},{score:{name:"@s",objective:"burstStreak"},color:"green"},{text:")",color:"green"},{text:" has been ended!",italic:true}]
tag @s remove bye_felicia