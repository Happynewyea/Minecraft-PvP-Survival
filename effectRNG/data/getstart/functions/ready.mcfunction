# 게임 설정을 채팅에 띄웁니다.
tellraw @p ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"텍스트를 클릭해서 설정","color":"white"},{"text":"\n\n[ 시작 ]","color":"green","clickEvent":{"action":"run_command","value":"/function getstart:befstart"}},{"text":"\n[ 리셋 ]","color":"yellow","clickEvent":{"action":"run_command","value":"/function getstart:reset"}},{"text":"\n[ 설정 ]","color":"light_gray","clickEvent":{"action":"run_command","value":"/say 아직 기능이 없습니다!"}}]

worldborder set 1000 0