# 키보드, 패드를 사용한 미디어 제어

[presentMediaPlayer()](../../how_to_use/home.md#presentmediaplayer)를 호출하여 미디어 플레이어를 생성하면, 키보드 또는 패드로 미디어를 제어할 수 있습니다. 또한 presnetMediaPlayer()를 통해 미디어 플레이어를 생성할 때, 안드로이드 SDK에서 제공하는 MediaPlayerView를 이용하는데, 이 MediaPlayerView는 더 많은 제어 기능을 지원합니다. 사용 가능한 키 및 제스처는 아래와 같습니다.

|키 또는 제스처|동작|
|---|---|
|Directional pad의 왼쪽 키<sup>*</sup>|10초 전으로 이동|
|Directional pad의 왼쪽 키를 길게 꾹 누르기<sup>*</sup>|1초 전으로 계속 이동|
|Directional pad의 오른쪽 키<sup>*</sup>|10초 후로 이동|
|Directional pad의 오른쪽 키를 길게 꾹 누르기<sup>*</sup>|1초 후로 계속 이동|
|스페이스 키<sup>*</sup>|재생 / 일시 정지 토글|
|ESC 키<sup>**</sup>|다이얼로그 닫기|
|왼쪽, 오른쪽으로 드래그<sup>**</sup>|n초 전, 후로 이동|
|왼쪽 화면에서 위, 아래로 드래그<sup>**</sup>|화면 밝기 조정|
|오른쪽 화면에서 위, 아래로 드래그<sup>**</sup>|볼륨 조절|
|싱글 클릭<sup>**</sup>|컨트롤러 화면 켜기 / 끄기|
|더블 클릭<sup>**</sup>|화면 속 화면 모드|
|길게 꾹 누르기<sup>**</sup>|화면 잠금 모드|

<div align="right">
* MediaPlayer에서 지원하는 키 또는 제스처<br>
** MediaPlayerView에서 지원되는 키 또는 제스처 
</div>

