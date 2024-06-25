# SDK 변경 이력

| 날짜 | 변경 내용 |
|:--:|--|
|[2024.06.24.](https://app.playnplay.com/sdks/2024-06-24/NPlayerSDK-android.zip)|<ul><li>제어 화면의 커스터마이징을 위한 [클래스 MediaPlayerInfoView](../class/media-player-info-view/home.md) 추가</li></ul>|
|[2024.06.21.](https://app.playnplay.com/sdks/2024-06-21/NPlayerSDK-android.zip)|<ul><li>[클래스 MediaPlayerControlView](../class/media-player-control-view/home.md)에 메서드 추가</li></ul>|
|[2024.06.20.](https://app.playnplay.com/sdks/2024-06-20/NPlayerSDK-android.zip)|<ul><li>구간 반복 시 세션 중복 생성 문제 수정</li></ul>|
|[2024.06.14.](https://app.playnplay.com/sdks/2024-06-14/NPlayerSDK-android.zip)|<ul><li>제어 화면의 커스터마이징을 위한 [클래스 MediaPlayerControlView](../class/media-player-control-view/home.md) 추가</li></ul>|
|[2024.05.29.](https://app.playnplay.com/sdks/2024-05-29/NPlayerSDK-android.zip)|<ul><li>프로가드 적용</li></ul>|
|[2024.05.24.](https://app.playnplay.com/sdks/2024-05-24/NPlayerSDK-android.zip)|<ul><li>Unload 이벤트 추가<ul><li>[이벤트 리스너 onUnload](../interface/event-listeners/home.md#onunload)</li><li>[이벤트 핸들러 unload](../class/event-handlers/home.md#unload)</li></ul><li>PlaybackFinish 이벤트에 종료 원인 추가<ul><li>[이벤트 리스너 onPlaybackFinish](../interface/event-listeners/home.md#onplaybackfinish)</li><li>[이벤트 핸들러 playbackFinish](../class/event-handlers/home.md#playbackfinish)</li><li>[열거형 PlaybackFinishReason](../enum/playback-finish-reason/home.md)</ul></li><li>Callback URL 추가<ul><li>[재생 종료 보고](../../callback-url/notify-playback-finish.md)</li></ul>|
|[2024.05.20.](https://app.playnplay.com/sdks/2024-05-20/NPlayerSDK-android.zip)|<ul><li>Callback URL 추가<ul><li>[재생 상태 보고](../../callback-url/notifiy-playback-status.md)</li><li>[다운로드 상태 보고](../../callback-url/notifiy-download-status.md)</li></ul></li></ul>|
|[2024.05.09.](https://app.playnplay.com/sdks/2024-05-09/NPlayerSDK-android.zip)|<ul><li>안정성 개선</li></ul>|
|[2024.04.29.](https://app.playnplay.com/sdks/2024-04-29/NPlayerSDK-android.zip)|<ul><li>자바 메서드 오버라이드 문제 수정</li><li>백그라운드 재생 중 안드로이드 상단 메뉴바를 내린 뒤 재생 중인 플레이어 표시를 선택 시 플레이어 화면으로 돌아오는 기능 추가</li><li>PlaybackFinish 이벤트 추가<ul><li>[이벤트 리스너 onPlaybackFinish](../interface/event-listeners/home.md#onplaybackfinish)</li><li>[이벤트 핸들러 PlaybackFinish](../class/event-handlers/home.md#playbackfinish)</li></ul></li></ul>|
|[2024.04.24.](https://app.playnplay.com/sdks/2024-04-24/NPlayerSDK-android.zip)|<ul><li>재생 및 다운로드 시 [셀룰러 데이터 사용 옵션](?search=android%20allowsCellularAccess) 추가</li></ul>|
|[2024.04.17.](https://app.playnplay.com/sdks/2024-04-17/NPlayerSDK-android.zip)|<ul><li>[오프라인 재생 기능](../class/media-item/home.md#withdrmconfiguration) 추가|
|[2024.04.12.](https://app.playnplay.com/sdks/2024-04-12/NPlayerSDK-android.zip)|<ul><li>[백그라운드 재생 속성](../class/media-player-activity-configuration/home.md#allowsbackgroundplayback) 추가</li></ul>|
|2024.04.08.|<ul><li>다른 앱 또는 백그라운드 전환 후 재생 창 닫히는 문제 수정</li><li>녹화 / 캡쳐 차단 추가</li><li>다운로드 저장소 선택 기능 추가</li><li>만료된 컨텐츠 다운로드 시 실패 사유를 ‘Failed (Unauthorized)’로 표시되도록 변경</li></ul> |
|[2024.04.03.](https://app.playnplay.com/sdks/2024-04-03/NPlayerSDK-android.zip)|<ul><li>안정성 개선</li></ul>|
|[2024.04.01.](https://app.playnplay.com/sdks/2024-04-01/NPlayerSDK-android.zip)|<ul><li>[미디어 플레이어 설정 기능](../class/media-player-activity-configuration/home.md#mediaplayeractivityconfiguration) 추가 - UI 옵션 컨트롤 등</li></ul> |
|[2024.03.21.](https://app.playnplay.com/sdks/2024-03-21/NPlayerSDK-android.zip)|<ul><li>자바 호환성 업데이트</li></ul>|
|[2024.03.14.](https://app.playnplay.com/sdks/2024-03-14/NPlayerSDK-android.zip)|<ul><li>[다운로드 매니저](../class/download-manager/home.md) 추가<br>참고: [DownloadManager.Listener](../interface/download-manager-listener/home.md), [DownloadItem](../class/download-item/home.md), [DownloadManager](../class/download-manager/home.md), [Progress](../class/download-item-progress/home.md), [DownloadItem.Status](../enum/download-item-status/home.md), [DownloadItem.FailedReason](../enum/download-item-failed-reason/home.md)<br>설정: [외부 라이브러리 의존성 업데이트](../how-to-set/project-settings.md#외부-라이브러리-의존성-추가), [다운로드를 위한 브로드캐스트 수신기 선언](../how-to-set/project-settings.md#다운로드를-위한-브로드캐스트-수신기-선언)</li></ul> |
|[2024.02.21.](https://app.playnplay.com/sdks/2024-02-21/NPlayerSDK-android.zip)|<ul><li>안정화</li></ul> |
|2024.02.15.|<ul><li>SDK 보안 기능 추가<br>앱의 Package name을 콘솔에 등록한 후 콘솔의 App ID를 설정<br>참고: [사용 방법](../how-to-use/home.md)</li></ul> |
|[2023.12.27.](https://drive.google.com/file/d/12KgHLEZWqxX7XTVV6TGZUXc1-HCPJNKS/view?usp=sharing)|<ul><li> 첫 번째 버전</li></ul>|
