# 시작하기 전에 모든 것을 초기화합니다.
clear @a
effect clear @a
gamemode survival @a
time set 0

# 기본적인 게임 규칙을 킵니다.
gamerule fallDamage true
gamerule fireDamage true
gamerule freezeDamage true
gamerule drowningDamage true

# reset 함수에서 제거한 스코어보드를 재설정합니다.
scoreboard objectives add sec1 dummy
scoreboard objectives add sec2 dummy
scoreboard objectives add min dummy
scoreboard objectives add ticksec dummy


# 기본적인 시간을 설정합니다.
scoreboard players set timer min 30
scoreboard players set timer sec1 0
scoreboard players set timer sec2 0
scoreboard players set timer ticksec 20


# 플레이어들을 월드보더 안의 랜덤 위치로 이동시킵니다.
# 주의: 이 범위를 수정하실 경우, 다른 함수에 있는 월드보더 범위도 바꾸시길 권고합니다.
spreadplayers 0 0 100 500 false @a



# 기본효과를 지급해 시작부터 죽는 일을 방지합니다.
effect give @a saturation 5 127 true
effect give @a instant_health 1 10 true
effect give @a resistance 120 4 true



# 채팅에 남아있는 게임 설정을 지우기 위한 명령어입니다.
tellraw @a ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]