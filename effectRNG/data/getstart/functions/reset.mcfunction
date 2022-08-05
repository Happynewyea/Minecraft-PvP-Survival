scoreboard objectives remove min
scoreboard objectives remove sec1
scoreboard objectives remove sec2
scoreboard objectives remove ticksec

clear @a
gamemode adventure @a



# 게임 규칙을 끕니다.
gamerule fallDamage false
gamerule fireDamage false
gamerule freezeDamage false
gamerule drowningDamage false

playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0 0
playsound minecraft:block.chain.break master @a ~ ~ ~ 0.5 0 0
title @a actionbar ["",{"text":"Reset","color":"red","bold":true}]

worldborder set 1000 0