function killeff:random

# 기본적인 시간을 제공합니다
execute unless score timer min matches ..30 run scoreboard players set timer min 30
execute unless score timer sec1 matches ..9 run scoreboard players set timer sec1 0
execute unless score timer sec2 matches ..9 run scoreboard players set timer sec2 0
execute unless score timer ticksec matches ..21 run scoreboard players set timer ticksec 20


# ticksec를 틱마다 줄여 1초를 감지합니다
scoreboard players remove timer ticksec 1
execute if score timer ticksec matches ..0 run scoreboard players remove timer sec2 1
execute if score timer ticksec matches ..0 run scoreboard players set timer ticksec 20

# 각자 시간을 조절해줍니다
execute if score timer sec2 matches ..-1 run scoreboard players remove timer sec1 1
execute if score timer sec1 matches ..-1 run scoreboard players remove timer min 1
execute if score timer sec1 matches ..-1 run scoreboard players set timer sec1 5
execute if score timer sec2 matches ..-1 run scoreboard players set timer sec2 9

worldborder warning distance 16


# actionbar에 남은시간 띄우기
execute if score timer min matches 0.. run title @a actionbar ["",{"text":"[ 남은시간 ] : ","color":"green","bold":true},{"score":{"name":"timer","objective":"min"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"timer","objective":"sec1"},"color":"yellow"},{"text":""},{"score":{"name":"timer","objective":"sec2"},"color":"yellow"}]
# 남은시간이 없을 경우
execute if score timer min matches ..-1 run title @a actionbar ["",{"text":"[ 남은시간 ] : ","color":"green","bold":true},{"text":"Time over","color":"yellow"}]



# 10분 경과시 월드보더 감소
execute if score timer min matches 20 run execute if score timer sec1 matches 0 run execute if score timer sec2 matches 0 run execute if score timer ticksec matches ..2 run title @a title ["",{"text":"월드보더 축소"}]
execute if score timer min matches 20 run execute if score timer sec1 matches 0 run execute if score timer sec2 matches 0 run worldborder set 500 180

# 20분 경과시 월드보더 감소
execute if score timer min matches 10 run execute if score timer sec1 matches 0 run execute if score timer sec2 matches 0 run execute if score timer ticksec matches ..2 run title @a title ["",{"text":"월드보더 축소"}]
execute if score timer min matches 10 run execute if score timer sec1 matches 0 run execute if score timer sec2 matches 0 run worldborder set 250 90

# 25분 경과시 월드보더 감소
execute if score timer min matches 5 run execute if score timer sec1 matches 0 run execute if score timer sec2 matches 0 run execute if score timer ticksec matches ..2 run title @a title ["",{"text":"월드보더 축소"}]
execute if score timer min matches 5 run execute if score timer sec1 matches 0 run execute if score timer sec2 matches 0 run worldborder set 100 60