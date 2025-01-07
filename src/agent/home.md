# Agent 실행

플레이어를 실행시켜 DRM 패키징 된 미디어 파일을 재생 및 다운로드 할 수 있습니다. 

플레이어 실행 절차는 Windows, macOS, iOS, Android 동일합니다.

<br>

# launchAgent

```javascript
async function launchAgent(type, mediaItemOrUrl, options);
```

|파라미터|타입|설명|
|:--:|:--:|:--:|
|type|[LaunchType](#launchtype)|실행 타입|
|mediaItemOrUrl|[MediaItem](#mediaitem) \| [URL](https://developer.mozilla.org/en-US/docs/Web/API/URL) \| string|재생 / 다운로드 항목 정보|
|options|[Options](#options) \| undefined|플레이어 높이, 너비 등 옵션|

[미디어 아이템](#mediaitem)이나 미디어 주소를 사용하여 플레이어를 실행시킬 수 있습니다. 이때 사용 목적에 따라 [타입](#launchtype)을 설정할 수 있습니다.

## LaunchType

```javascript
const LaunchType = {
    Streaming: 'streaming',
    Downloading: 'downloading',
    OpeningPage: 'opening-page',
};
```

|값|설명|
|:--:|:--:|
|Streaming|동영상 재생|
|Downloading|동영상 다운로드|
|OpeningPage|커스텀 페이지 열기|

[launchAgent()](#launchagent)를 호출할 때, LaunchType.Streaming, LaunchType.Downloading 과 같이 타입으로 사용합니다. [사용 예제](#사용-예제-동영상-재생)를 참고하세요.

## MediaItem

```javascript
{
    "url": string | URL, 
    "seekable": boolean | undefined, 
    "returnUrl": string | URL | undefined, 
    "startTime": number | undefined,
    "drm": DRM | undefined, 
    "subtitles": [Subtitle] | undefined, 
    "metadata": Metadata | undefined 
}
```

|이름|타입|설명|
|:--:|:--:|:--:|
|url| string \| [URL](https://developer.mozilla.org/en-US/docs/Web/API/URL) |  미디어 URL|
|seekable| boolean \| undefined | 탐색(Seek) 기능을 허용 여부  (옵션, 기본값: true)|
|returnUrl| string \| [URL](https://developer.mozilla.org/en-US/docs/Web/API/URL) \| undefined | 리턴 URL  (옵션)|
|drm| [DRM](#drm) \| undefined | [DRM](#drm) 설정 (옵션)|
|subtitles|\[[Subtitle](#subtitle)\] \| undefined| 자막 설정 (옵션)|
|metadata|[Metadata](#metadata) \| undefined| 메타데이터 설정 (옵션)|

DRM 설정, returnUrl 등을 포함한 미디어 아이템을 구성할 수 있습니다. [사용 예제](#사용-예제-동영상-재생)를 참고하세요.
<br>
returnUrl에는 반드시 **https://** 를 포함한 URL을 입력해야 정상적으로 작동합니다.

## DRM 

```javascript
{
    "appId": string,
    "userId": string,
    "userData": object | undefined,
    "offlineAccessPeriod": number | undefined,
}
```

|이름|타입|설명|
|:--:|:--:|:--:|
| appId | string | App 아이디 |
| userId | string | 사용자 아이디 |
| userData | object \| undefined | 고객사의 필요에 따라 Callback URL에 전달할 데이터 (옵션)|
| offlineAccessPeriod | number \| undefined | 다운로드 컨텐츠의 오프라인 재생 기한 설정<br>(옵션, 단위: 초)<p><table><thead><tr><th>값</th><th>설명</th></tr></thead><tbody><tr><th>undefined</th><th>제한없이 재생 가능</th></tr><tr><th>0</th><th>오프라인 재생 권한 없음</th></tr><tr><th>n</th><th>n초까지 재생 가능</th></tr></tbody></table>|

[미디어 아이템](#mediaitem)을 구성할 때, 위와 같은 구성 요소를 포함하는 DRM 설정을 추가할 수 있습니다.

## Subtitle 

```javascript
{
    "url": string | URL,
    "language": string | undefined,
    "label": string | undefined,
    "mode": "autoSelect" | "show" | "hidden" | undefined,
}
```

||||
|:--:|:--:|:--:|
|url|string \| [URL](https://developer.mozilla.org/en-US/docs/Web/API/URL)|자막 URL|
|language| string \| undefined | 자막 언어 (옵션)|
|label| string \| undefined | 자막 타이틀 (옵션)|
|mode| string \| undefined | 자막 선택 모드<br>(옵션, 기본값: "autoSelect")<p><table><thead><tr><th>값</th><th>설명</th></tr></thead><tbody><tr><th>autoSelect</th><th>자동 선택</th></tr><tr><th>show</th><th>자막 보이기</th></tr><tr><th>hidden</th><th>자막 숨기기</th></tr></tbody></table>|

[미디어 아이템](#mediaitem)을 구성할 때, 위와 같은 요소를 포함하는 자막을 추가할 수 있습니다.

## Metadata 

```javascript
{
    "artworkUrl": string | URL | undefined,
    "downloadPath": string | undefined,
}
```

|이름|타입|설명|
|:--:|:--:|:--:|
|artworkUrl| string \| [URL](https://developer.mozilla.org/en-US/docs/Web/API/URL) \| undefined | artwork URL (옵션)|
|downloadPath | string \| undefined | 다운로드 파일의 경로 표시 값 <br>[타입](#launchtype)이 LaunchType.DOWNLOAD의 경우 설정|

[미디어 아이템](#mediaitem)을 구성할 때, 메타데이터를 추가할 수 있습니다.

## Options

```javascript
{
    "height": number | undefined,
    "width": number | undefined,
}
```

|이름|타입|설명|
|:--:|:--:|:--:|
|height| number \| undefined| 플레이어의 높이 |
|width| number \| undefined || 플레이어의 너비 |

미디어 플레이어의 크기를 설정할 수 있습니다. [사용 예제](#사용-예제-동영상-재생)를 참고하세요.

## 사용 예제: 동영상 재생

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
    launchAgent(LaunchType.Streaming, mediaItem, { width: 900, height: 600 });
</script>
```
