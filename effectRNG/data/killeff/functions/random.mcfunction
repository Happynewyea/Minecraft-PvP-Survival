scoreboard objectives add Pl playerKillCount

execute unless entity @e[type=armor_stand,tag=buff, tag=b1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["buff","b1"],Invisible:1b,Marker:1b,NoGravity:1b}
execute unless entity @e[type=armor_stand,tag=buff, tag=b2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["buff","b2"],Invisible:1b,Marker:1b,NoGravity:1b}
execute unless entity @e[type=armor_stand,tag=buff, tag=b3] run summon minecraft:armor_stand ~ ~ ~ {Tags:["buff","b3"],Invisible:1b,Marker:1b,NoGravity:1b}
execute unless entity @e[type=armor_stand,tag=buff, tag=b4] run summon minecraft:armor_stand ~ ~ ~ {Tags:["buff","b4"],Invisible:1b,Marker:1b,NoGravity:1b}
execute unless entity @e[type=armor_stand,tag=buff, tag=b5] run summon minecraft:armor_stand ~ ~ ~ {Tags:["buff","b5"],Invisible:1b,Marker:1b,NoGravity:1b}
execute unless entity @e[type=armor_stand,tag=buff, tag=b6] run summon minecraft:armor_stand ~ ~ ~ {Tags:["buff","b6"],Invisible:1b,Marker:1b,NoGravity:1b}
execute unless entity @e[type=armor_stand,tag=buff, tag=b7] run summon minecraft:armor_stand ~ ~ ~ {Tags:["buff","b7"],Invisible:1b,Marker:1b,NoGravity:1b}

tag @e[tag=buff,sort=random,limit=1] add eff

execute as @e[tag=eff,tag=b1] run effect give @a[scores={Pl=1..}] strength 5 0 true
execute as @e[tag=eff,tag=b2] run effect give @a[scores={Pl=1..}] regeneration 12 1 true
execute as @e[tag=eff,tag=b3] run effect give @a[scores={Pl=1..}] resistance 10 2 true
execute as @e[tag=eff,tag=b4] run effect give @a[scores={Pl=1..}] speed 10 1 true
execute as @e[tag=eff,tag=b5] run effect give @a[scores={Pl=1..}] jump_boost 10 0 true
execute as @e[tag=eff,tag=b6] run effect give @a[scores={Pl=1..}] instant_health 1 0 true
execute as @e[tag=eff,tag=b7] run effect give @a[scores={Pl=1..}] saturation 10 2 true

scoreboard players remove @a[scores={Pl=1..}] Pl 1

tag @e[tag=eff] remove eff