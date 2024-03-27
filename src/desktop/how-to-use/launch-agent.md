# Agent(플레이어) 실행

* 플레이어를 실행시켜 DRM 패키징 된 미디어 파일을 재생 및 다운로드 할 수 있습니다. 

* 플레이어 실행 절차는 Windows, macOS, iOS, Android 동일합니다.

## launchAgent

```javascript
async function launchAgent(type, mediaItemOrUrl);
```
* type: [LaunchType](#launchtype)
    * 실행 타입
* mediaItemOrUrl: [MediaItem](#mediaitem) | [URL](https://developer.mozilla.org/en-US/docs/Web/API/URL) | string
    * 재생 / 다운로드 항목 정보

## LaunchType

```javascript
const LaunchType = {
    Streaming: 'streaming',
    Downloading: 'downloading',
    OpeningPage: 'opening-page',
};
```

* Streaming - 동영상 재생
* Downloading - 동영상 다운로드
* OpeningPage - 커스텀 페이지 열기

## MediaItem

```javascript
{
    "url": string | URL, 
    "seekable": boolean | undefined, 
    "returnUrl": string | URL | undefined, 
    "drm": DRM | undefined, 
    "subtitles": [Subtitle] | undefined, 
    "metadata": Metadata | undefined 
}
```

* url:  미디어 URL
* seekable: 탐색(Seek) 기능을 허용 여부  (옵션, 기본값: true)
* returnUrl: 리턴 URL  (옵션)
* drm: DRM 설정 (옵션)
* subtitles: 자막 설정 (옵션)
* metadata: 메타데이터 설정 (옵션)


## DRM 

```javascript
{
    "appId": string,
    "userId": string,
    "userData": object | undefined
}
```

* appId: 앱 ID
* userId: 사용자 ID
* userData: 고객사의 필요에 따라 Callback URL에 전달할 데이터 (옵션)

## Subtitle 

```javascript
{
    "url": string | URL,
    "language": string | undefined,
    "label": string | undefined,
    "mode": "autoSelect" | "show" | "hidden" | undefined,
}
```

* url: 자막 URL
* language: 자막 언어 (옵션)
* label: 자막 타이틀 (옵션)
* mode: 자막 선택 모드 (옵션, 기본값: "autoSelect")

## Metadata 

```javascript
{
    "artworkUrl": string | URL | undefined,
    "downloadPath": string | undefined,
}
```

* artworkUrl: artwork URL (옵션)
* downloadPath: 다운로드 파일의 경로 표시 값
    * type이 LaunchType.DOWNLOAD의 경우 설정

## 사용 예

```html
<script type="text/javascript" src="https://app.playnplay.com/modules/agent.min.js">
<script type="text/javascript">
    const mediaItem = {
        url: "https://sample.playnplay.com/video/sintel-1280-surround.mp4",
        drm: {
            appId: "1ed493af-5988-65b5-a4ca-6d1c45be663c",
            userId: "test-user",
            userData: {
            }
        }
    };
    launchAgent(LaunchType.Streaming, mediaItem);
</script>
```
