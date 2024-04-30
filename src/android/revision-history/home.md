# SDK 변경 이력

| 날짜 | 변경 내용 |
|:--:|--|
|[2024.04.29.](https://app.playnplay.com/sdks/2024-04-29/NPlayerSDK-android.zip)|<ul><li>자바 메서드 오버라이드 문제 수정</li><li>백그라운드 재생 중 안드로이드 상단 메뉴바를 내린 뒤 재생 중인 플레이어 표시를 선택 시 플레이어 화면으로 돌아오는 기능 추가</li><li>[onPlaybackFinish](../interface/event-listeners/details.md#onplaybackfinish), [PlaybackFinish](../class/event-handlers/details.md#playbackfinish) 추가</li></ul>|
|[2024.04.24.](https://app.playnplay.com/sdks/2024-04-24/NPlayerSDK-android.zip)|<ul><li>재생 및 다운로드 시 [셀룰러 데이터 사용 옵션](?search=android%20allowsCellularAccess) 추가</li></ul>|
|[2024.04.17.](https://app.playnplay.com/sdks/2024-04-17/NPlayerSDK-android.zip)|<ul><li>[오프라인 재생 기능](../class/media-item/home.md#withdrmconfiguration) 추가|
|[2024.04.12.](https://app.playnplay.com/sdks/2024-04-12/NPlayerSDK-android.zip)|<ul><li>[백그라운드 재생 속성](../class/media-player-activity-configuration/details.md#allowsbackgroundplayback) 추가</li></ul>|
|2024.04.08.|<ul><li>다른 앱 또는 백그라운드 전환 후 재생 창 닫히는 문제 수정</li><li>녹화 / 캡쳐 차단 추가</li><li>다운로드 저장소 선택 기능 추가</li><li>만료된 컨텐츠 다운로드 시 실패 사유를 ‘Failed (Unauthorized)’로 표시되도록 변경</li></ul> |
|[2024.04.03.](https://app.playnplay.com/sdks/2024-04-03/NPlayerSDK-android.zip)|<ul><li>안정성 개선</li></ul>|
|[2024.04.01.](https://app.playnplay.com/sdks/2024-04-01/NPlayerSDK-android.zip)|<ul><li>[미디어 플레이어 설정 기능](../class/media-player-activity-configuration/home.md#mediaplayeractivityconfiguration) 추가 - UI 옵션 컨트롤 등</li></ul> |
|[2024.03.21.](https://app.playnplay.com/sdks/2024-03-21/NPlayerSDK-android.zip)|<ul><li>자바 호환성 업데이트</li></ul>|
|[2024.03.14.](https://app.playnplay.com/sdks/2024-03-14/NPlayerSDK-android.zip)|<ul><li>[다운로드 매니저](../class/download-manager/home.md) 추가<br>참고: [DownloadManager.Listener](../interface/download-manager-listener/home.md), [DownloadItem](../class/download-item/home.md), [DownloadManager](../class/download-manager/home.md), [Progress](../class/download-item-progress/home.md), [DownloadItem.Status](../enum/download-item-status/home.md), [DownloadItem.FailedReason](../enum/download-item-failed-reason/home.md)<br>설정: [외부 라이브러리 의존성 업데이트](../how-to-set/project-settings.md#외부-라이브러리-의존성-추가), [다운로드를 위한 브로드캐스트 수신기 선언](../how-to-set/project-settings.md#다운로드를-위한-브로드캐스트-수신기-선언)</li></ul> |
|[2024.02.21.](https://app.playnplay.com/sdks/2024-02-21/NPlayerSDK-android.zip)|<ul><li>안정화</li></ul> |
|2024.02.15.|<ul><li>SDK 보안 기능 추가<br>앱의 Package name을 콘솔에 등록한 후 콘솔의 App ID를 설정<br>참고: [사용 방법](../how-to-use/home.md)</li></ul> |
|[2023.12.27.](https://drive.google.com/file/d/12KgHLEZWqxX7XTVV6TGZUXc1-HCPJNKS/view?usp=sharing)|<ul><li> 첫 번째 버전</li></ul>|
