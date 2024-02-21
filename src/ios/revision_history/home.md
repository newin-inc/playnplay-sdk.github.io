# 변경 이력

| 버전   | 날짜 | 변경 내용 |
|-----------|------|:------------|
| [0.1](#버전-01) | 2024.1.17. | 첫 버전 문서 |
| [0.1.1](#버전-011) | 2024.1.18. | 프로젝트 설정 수정 |
| [0.1.2](#버전-012) | 2024.2.15. | 추가 구현 내용에 대한 설명 추가 |
| [0.1.3](#버전-013) | 2024.2.21. | 목차 구조 변경 |

-------
# 버전 0.1.3
2024.2.21.
<h1>목차 구조 변경</h1>
보다 더 사용하고 이해하기 쉽게, 클래스, 구조체, 프로토콜 및 열거형으로 분류하여 구조를 변경하였습니다.

* [클래스](../class/home.md)

    * [class MediaPlayer](../class/media-player/home.md)

    * [class MediaItem.Builder](../class/media-item-builder/home.md)

    * [class DrmConfiguration.Builder](../class/drm-configuration-builder/home.md) 추가

    * [class MetadataConfiguration.Builder](../class/metadata-configuration-builder/home.md) 추가
    
    * [class SubtitleConfiguration.Builder](../class/subtitle-configuration-builder/home.md) 추가

    * [class EventTarget](../class/event-target/home.md)

    * [class AudioTrack](../class/audio-track/home.md) 추가

    * [class MediaTrack](../class/media-track/home.md) 추가

    * [class TextTrack](../class/text-track/home.md) 추가

    * [class VideoTrack](../class/video-track/home.md) 추가

* [구조체](../struct/home.md)

    * [struct RepeatRange](../struct/media-player-repeat-range/home.md)

    * [struct Duration](../struct/duration/home.md)

    * [struct MediaItem](../struct/media-item/home.md)

    * [struct TimeRange](../struct/time-range/home.md)

    * [struct DrmConfiguration](../struct/drm-configuration/home.md) 추가

    * [struct MetadataConfiguration](../struct/metadata-configuration/home.md) 추가

    * [struct SubtitleConfiguration](../struct/subtitle-configuration/home.md) 추가

* [프로토콜](../protocol/home.md)

    * [protocol EventListener](../protocol/event-listeners/home.md)

* [열거형](../enum/home.md)

    * [enum EventHandler](../enum/event-handlers/home.md)

    * [enum MediaPlayer.PlaybackState](../enum/media-player-playback-state/home.md)

    * [enum MediaPlayer.RepeatMode](../enum/media-player-repeat-mode/home.md)

    * [enum MediaPlayer.ScalingMode](../enum/media-player-scaling-mode/home.md)

    * [enum SubtitleConfiguration.Mode](../enum/subtitle-configuration-mode/home.md)


<br><br><br><br>

-------
# 버전 0.1.2
2024.2.15.
<h1>추가 구현 내용에 대한 설명 추가</h1>

* [설정 방법](../how_to_set/project_settings.md)
    
    * [시작하기](../how_to_set/get_started.md)<br>
    시작하기 섹션을 설정 방법 아래로 이동하였습니다.

    * [프로젝트 설정](../how_to_set/project_settings.md)

        * [AppDelegate 설정](../how_to_set/project_settings.md#appdelegate-설정)<br>
        CP 아이디를 App 아이디로 변경


* [사용 방법](../how_to_use/home.md)

    * [번들 아이디 추가](../how_to_use/home.md#번들-아이디-추가)<br>
    번들 아이디 추가와 관련한 이미지 및 설명 추가

* [MediaPlayer](../class/media-player/home.md)

    * [속성](../class/media-player/details.md#속성)

        * [seekBackIncrement](../class/media-player/details.md#seekbackincrement)<br>
        표에 설정 부분 추가

        * [seekForwardIncrement](../class/media-player/details.md#seekforwardincrement)<br>
        표에 설정 부분 추가

* [미디어 플레이어 화면](../media_player_view/home.md)

    * 제목을 MediaPlayerView에서 **미디어 플레이어 화면**으로 변경

    * [화면 구성](../media_player_view/screen_layout/details.md)

        * [중앙 인터페이스](../media_player_view/screen_layout/details.md#중앙-인터페이스)

            * [트랙 설정 버튼](../media_player_view/screen_layout/details.md#3-트랙-설정-버튼)<br>
            비디오 트랙 설정, 오디오 트랙 설정, 자막 트랙 설정 그림 및 설명 추가

        * [하단 인터페이스](../media_player_view/screen_layout/details.md#하단-인터페이스)<br>
        [이전 버튼](../media_player_view/screen_layout/details.md#2-이전-버튼)과 [빨리 감기 버튼](../media_player_view/screen_layout/details.md#5-빨리-감기-버튼)에 대한 설명 수정

    * [키보드, 패드를 사용한 미디어 제어](../media_player_view/media_control_using_keyboard_and_pad/home.md#키보드-패드를-사용한-미디어-제어)<br>
    방향키 길게 꾹 누르는 제어 내용 추가
    방향키 관련 설명 수정

* [구조체](../struct/home.md)

    * [MediaItem](../struct/media-item/home.md)
    
        * 해당 내용을 [구조체](../struct/home.md)로 이동 및 [메서드](../struct/media-item/details.md#메서드), [클래스](../struct/media-item/details.md#클래스)로 세분화

<br><br><br><br>

-------
# 버전 0.1.1
2024.1.18.
<h1>프로젝트 설정 수정</h1>

* [설정 방법](../how_to_set/project_settings.md)
    
    * [프로젝트 설정](../how_to_set/project_settings.md)

        * [AppDelegate 설정](../how_to_set/project_settings.md#appdelegate-설정)<br>
        AppDelegate 설정 부분 추가

<br><br><br><br>

-------
# 버전 0.1
2024.1.17.
<h1> 첫 버전 문서 </h1>