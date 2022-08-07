# Minecraft PVP Survival Alpha 0.0.1



### Alpha 0.0.1 업데이트 내역
- befstart 함수에 spreadplayers 추가 (기본값 : 500)
- befstart 함수에 worldborder 추가 (기본값 : 1000)
- start 함수에 worldborder 축소 추가 (기본값 : 1000 > 500 > 250)

## 기본 함수

### ready
채팅에 게임 옵션을 띄웁니다.
* 게임 옵션
  - 시작 : befstart 함수를 호출하여 게임을 시작합니다.
  - 리셋 : reset 함수를 호출하여 게임을 강제종료합니다.
  - 설정 : 아직 기능이 없습니다.

## 랜덤 함수

### random
난수를 지원합니다.
* 사용 방법
  - 현재 플레이어를 죽일 경우 랜덤한 상태효과가 들어오는 것으로 설정되어 있습니다.
  - start 함수에서 호출합니다.

## 진행 함수

### start
게임 진행의 모든 것을 관여합니다.
* 사용 방법
  - ready 함수에서 [시작]을 누를 경우, 자동으로 호출됩니다
    - `ready > befstart > start`
* 주의
    - 이 함수는 반복 커맨드 블럭에 넣어 계속 작동되게 해주시길 바랍니다

## BUG
수정되지 않은 버그 목록입니다.
* BETA 0.1.0
  - 보트에 탄 상태로 시작할 경우, spreadplayers의 영향을 받지 않습니다.
