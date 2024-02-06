# 변경 이력

| Version   | Date | Description |
|-----------|------|:------------|
| [0.1](#버전-01) | 2023.12.27. | 첫 버전 문서 |
| [0.1.1](#버전-011) | 2024.1.12. | 기능 설명 추가 |
| [0.1.2](#버전-012) | 2024.2.5. | 이벤트 관련 설명 추가 |

# 버전 0.1.2
2024.2.5.
<h1>이벤트 관련 설명 추가</h1>
이벤트와 관련한 자세한 설명과, 추가로 구현한 부분에 대한 설명을 추가하였습니다. 설정과 관련한 부분과 뷰 설명에 대해 그림과 설명을 추가하였습니다.

## 추가

### [currentMediaItem](../media_player/properties/details.md#currentmediaitem)
속성 Player.currentMediaItem에 대한 설명 추가

### [currentMediaItemIndex](../media_player/properties/details.md#currentmediaitemindex)
속성 Player.currentMediaItemIndex에 대한 설명 추가

### [deviceVolume](../media_player/properties/details.md#devicevolume)
속성 MediaPlayer.deviceVolume가 새롭게 추가되어 문서에 추가

### [mediaItems](../media_player/properties/details.md#mediaitems)
속성 MediaPlayer.mediaItems가 새롭게 추가되어 문서에 추가

### [resizeMode](../media_player/properties/details.md#resizemode)
속성 MediaPlayer.resizeMode가 새롭게 추가되어 문서에 추가

### [prepare()](../media_player/methods/details.md#prepare)
메서드 MediaPlayer.prepare()에 대한 설명 추가

### [release()](../media_player/methods/details.md#release)
메서드 MediaPlayer.release()에 대한 설명 추가

### [addEventListener()](../media_player/methods/details.md#addeventlistener)
메서드 MediaPlayer.addEventListener()에 대한 설명 추가

### [removeEventListener()](../media_player/methods/details.md#removeeventlistener)
메서드 MediaPlayer.removeEventListener()에 대한 설명 추가

### [이벤트 핸들러](../media_player/event_handlers/details.md)
* 이벤트 핸들러 파라미터에 대한 설명 추가

* 다음 이벤트 핸들러에 대한 설명 추가
    * [MediaItemTransition](../media_player/event_handlers/details.md#mediaitemtransition) 추가

    * [PlaybackStateChange](../media_player/event_handlers/details.md#playbackstatechange) 추가

    * [RepeatModeChange](../media_player/event_handlers/details.md#repeatmodechange) 추가

    * [ResizeModeChange](../media_player/event_handlers/details.md#resizemodechange) 추가

    * [VideoSizeChange](../media_player/event_handlers/details.md#videosizechange) 추가


### [이벤트 리스너](../media_player/event_listeners/details.md)
* 아래의 함수들을 이벤트 리스너 챕터 아래에 추가

```kotlin
fun onDurationChange(duration: Duration)
fun onEmptied()
fun onEnded()
fun onError(error: PlaybackException)
fun onLoadedData()
fun onLoadedMetadata()
fun onLoadStart()
fun onPause()
fun onPlay()
fun onPlaying()
fun onPositionDiscontinuity(
    player: MediaPlayer,
    oldPosition: Duration,
    newPosition: Duration
)
fun onProgress()
fun onRateChange(playbackRate: Float)
fun onRepeatRangeChange(repeatRange: MediaPlayer.RepeatRange?)
fun onResizeModeChange(mode: Int)
fun onSeeked()
fun onSeeking()
fun onSuspend()
fun onTimeUpdate(position: Duration)
fun onVolumeChange(volume: Float, muted: Boolean)
fun onWaiting()
```

### [키보드, 패드를 사용한 미디어 제어](../media_player_view/media_control_using_keyboard_and_pad/home.md#키보드-패드를-사용한-미디어-제어)
* Directional Pad의 방향키 길게 꾹 누르는 제어 내용 추가

### 링크 추가
* 효율적인 탐색을 위해서 속성, 메서드 등의 설명에 문서 링크 혹은 외부 링크를 추가하였습니다.


## 수정

### [외부 라이브러리 의존성 추가](../how_to_set/project_settings.md#외부-라이브러리-의존성-추가)
* 디슈가링 관련 의존성 추가

### [자바 버전](../how_to_set/project_settings.md#자바-버전)
* 디슈가링 관련 컴파일 옵션 변경 내용 수정

### [액티비티 구성](../how_to_use/home.md#액티비티-구성)
* 앱 아이디 설정 관련 추가 및 액티비티 구성함에 있어서 코드 분리 및 수정

### [presentMediaPlayer()](../how_to_use/home.md#presentmediaplayer)
* presentMediaPlayer() 설명 내의 미디어 아이템과 관련하여 클래스 MediaItem 링크 추가

### [ABRepeatRangeChange → RepeatRangeChange](../media_player/event_handlers/details.md#repeatrangechange)
* ABRepeatRangeChange를 RepeatRangeChange로 이름 변경

### [onABRepeatRangeChange → onRepeatRangeChange](../media_player/event_listeners/details.md#onrepeatrangechange)
* onABRepeatRangeChange를 onRepeatRangeChange로 이름 변경

### [설정](../media_player_view/settings/home.md#설정)
* 앱 아이디 설정 관련 추가

### [상단 인터페이스](../media_player_view/screen_layout/details.md#상단-인터페이스)
* 이미지 수정 및 설명 수정: 제목 부분 추가

### [북마크](../media_player_view/screen_layout/details.md#북마크)
* 북마크 세부 내용 및 그림 추가

### [하단 인터페이스](../media_player_view/screen_layout/details.md#하단-인터페이스)
* 이전 버튼과 빨리 감기 버튼에 대한 설명 수정

### [키보드, 패드를 사용한 미디어 제어](../media_player_view/media_control_using_keyboard_and_pad/home.md)
* Directional Pad의 방향키 관련 설명 수정


## 삭제
없음

<br><br><br><br>

-------
# 버전 0.1.1
2024.1.12.
<h1>기능 설명 추가</h1>

버전 0.1은 아주 기본적인 정보만 담고 있었기 때문에, 실제 첫 문서는 버전 0.1.1로 보는 것이 옳을 수도 있습니다. 버전 0.1의 거의 대부분이 수정되었고, 40여 페이지가 추가가 되었기 때문에, 추가, 수정 목록은 여기서 큰 의미가 없다고 봐도 무방합니다.

## 추가

### [시작하기](../introduction/home.md#시작하기)
* SDK 소개 및 배경 설명

### [설정 방법](../how_to_set/home.md)
* 버전 0.1의 설치 방법을 기반으로 하여 설정 방법에 대한 기술 새로 작성

### [사용 방법](../how_to_use/home.md)
* 버전 0.1의 사용 예제를 기반으로 하여 코드 설명 및 사용 방법에 대해서 기술 새로 작성

### [MediaPlayer](../media_player/home.md)
* 미디어 플레이어 인터페이스의 속성, 메서드 등에 대해서 기술

### [MediaPlayerView](../media_player_view/home.md)
* 미디어 플레이어 뷰의 화면 구성 및 설정 등에 대해서 기술

## 수정

### [프로젝트 생성](../how_to_set/create_project.md)
* 내용 세분화 및 이미지 추가

### [build.gradle.kts 수정](../how_to_set/project_settings.md#buildgradlekts-수정)
* 섹션 추가

### [AndroidManifest.xml 수정](../how_to_set/project_settings.md#androidmanifestxml-수정)<br>
* 퍼미션 관련 추가

### [사용 예제](../how_to_use/home.md#액티비티-구성)
* 코드 및 명령어 설명 추가

### [SDK 버전 오류 발생 시](../faq/home.md#컴파일-sdk-버전-오류-케이스)
* 이동 및 문구 수정

## 삭제
없음

<br><br><br><br>

-------
# 버전 0.1
2023.12.27.
<h1> 첫 버전 문서 </h1>