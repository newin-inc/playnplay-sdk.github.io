# Agent 설정
```javascript
var PLAYNPLAY_CONFIG = {
    "minVersion": "latest" | "1.x.x"
};
```

|속성|타입|설명|참고|
|||||
|minVersion|string \| null|PlaynPlay 앱의 최소 버전|최소 버전 이상의 버전은 업데이트 알림을 하지 않습니다.|

참고: 
스크립트 추가시 'agent.js' 또는 'agent.min.js' 보다 먼저 추가해야합니다.


```html
<script type="text/javascript" src="https://설정 값을 저장한 파일 경로/playnplay_config.js">
<script type="text/javascript" src="https://app.playnplay.com/modules/agent.min.js">
```

# Agent 실행

플레이어를 실행시켜 DRM 패키징 된 미디어 파일을 재생 및 다운로드 할 수 있습니다. 

플레이어 실행 절차는 Windows, macOS, iOS, Android 동일합니다.

<br>

# playnplay: launch()

```javascript
playnplay.launch = async (type, mediaItemOrUrl, options)
```
```javascript
// Deprecated
async function launchAgent(type, mediaItemOrUrl, options);
```

|파라미터|타입|설명|
||||
|type|[LaunchType](#launchtype)|실행 타입|
|mediaItemOrUrl|[MediaItem](#mediaitem) \| [URL](https://developer.mozilla.org/en-US/docs/Web/API/URL) \| string|재생 / 다운로드 항목 정보|
|options|[Options](#options) \| null|플레이어 높이, 너비 등 옵션|

[미디어 아이템](#mediaitem)이나 미디어 주소를 사용하여 플레이어를 실행시킬 수 있습니다. 이때 사용 목적에 따라 [타입](#launchtype)을 설정할 수 있습니다.

# playnplay: download()

```javascript
playnplay.download = async (mediaItems)
```

|파라미터|타입|설명|
||||
|mediaItems|[\[MediaItem\]](#mediaitem)\|[MediaItem](#mediaitem)|다운로드 항목|

# playnplay: getDeviceInfo()

```javascript
playnplay.getDeviceInfo = async ()
```
```javascript
// Deprecated
async function getDeviceInfo();
```
출력: [DeviceInfo](#deviceinfo)

브라우저가 실행되고 있는 장치의 정보를 얻어옵니다.


## LaunchType

```javascript
const LaunchType = {
    Streaming: 'streaming',
    Downloading: 'downloading',
    OpeningPage: 'opening-page'
};
```

|값|설명|
|||
|Streaming|동영상 재생|
|Downloading|동영상 다운로드|
|OpeningPage|커스텀 페이지 열기|

[launchAgent()](#launchagent)를 호출할 때, LaunchType.Streaming, LaunchType.Downloading 과 같이 타입으로 사용합니다. [사용 예제](#사용-예제-동영상-재생)를 참고하세요.

## MediaItem

```javascript
{
    "url": string | URL, 
    "seekable": boolean | null, 
    "returnUrl": string | URL | null, 
    "startTime": number | StartTime | null,
    "drm": DRM | null, 
    "subtitles": [Subtitle] | null, 
    "metadata": Metadata | null,
    "clipping": Clipping | null,
    "useBookmarkCallback": boolean | null
}
```

|이름|타입|설명|
||||
|url| string \| [URL](https://developer.mozilla.org/en-US/docs/Web/API/URL) |  미디어 URL|
|drm| [DRM](#drm) \| null| [DRM](#drm) 설정 (옵션)|
|subtitles|\[[Subtitle](#subtitle)\] \| null| 자막 설정 (옵션)|
|metadata|[Metadata](#metadata) \| null| 메타데이터 설정 (옵션)|
|clipping|[Clipping](#clipping) \| null| 미디어 클리핑 설정 (옵션)|
|returnUrl| string \| [URL](https://developer.mozilla.org/en-US/docs/Web/API/URL) \| null | 리턴 URL  (옵션)|
|seekable| boolean \| null| 탐색(Seek) 기능을 허용 여부  (옵션, 기본값: true)|
|disablePlaybackRate| boolean \| null| 배속 기능을 허용 여부  (옵션, 기본값: false)|
|startTime| number \| [StartTime](#starttime) \| null| 재생 시작 시간 설정  (옵션)|
|useBookmarkCallback| boolean \| null| 북마크 콜백 URL 사용 (옵션, 기본값: false)<br /><p><table><thead><tr><th>값</th><th>설명</th></tr></thead><tbody><tr><td>true</td><td>[GetBookmarks](../callback-url/get-bookmarks.html), [UpdateBookmarks](../callback-url/update-bookmarks.html) Callback 사용</td></tr><tr><td>false</td><td>PlaynPlay 서비스에서 제공하는 북마크 불러오기 저장 방식 사용</td></tr></tbody></table>|

## DRM 

```javascript
{
    "appId": string,
    "userId": string,
    "userData": object | null,
    "offlineAccessPeriod": number | null
}
```

|이름|타입|설명|
||||
| appId | string | App 아이디 |
| userId | string | 사용자 아이디 |
| userData | object \| null | 고객사의 필요에 따라 Callback URL에 전달할 데이터 (옵션)|
| offlineAccessPeriod | number \| null | 다운로드 컨텐츠의 오프라인 재생 기한 설정<br>(옵션, 단위: 초)<p><table><thead><tr><th>값</th><th>설명</th></tr></thead><tbody><tr><th>null</th><th>제한없이 재생 가능</th></tr><tr><th>0</th><th>오프라인 재생 권한 없음</th></tr><tr><th>n</th><th>n초까지 재생 가능</th></tr></tbody></table>|

[미디어 아이템](#mediaitem)을 구성할 때, 위와 같은 구성 요소를 포함하는 DRM 설정을 추가할 수 있습니다.

## Subtitle 

```javascript
{
    "url": string | URL,
    "language": string | null,
    "label": string | null,
    "mode": "autoSelect" | "show" | "hidden" | null
}
```

|이름|타입|설명|
||||
|url|string \| [URL](https://developer.mozilla.org/en-US/docs/Web/API/URL)|자막 URL|
|language| string \| null | 자막 언어 (옵션)|
|label| string \| null | 자막 타이틀 (옵션)|
|mode| string \| null | 자막 선택 모드<br>(옵션, 기본값: "autoSelect")<p><table><thead><tr><th>값</th><th>설명</th></tr></thead><tbody><tr><th>autoSelect</th><th>자동 선택</th></tr><tr><th>show</th><th>자막 보이기</th></tr><tr><th>hidden</th><th>자막 숨기기</th></tr></tbody></table>|

[미디어 아이템](#mediaitem)을 구성할 때, 위와 같은 요소를 포함하는 자막을 추가할 수 있습니다.

## StartTime 

```javascript
{
    "value": number,
    "syncedAt": Date | null
}
```

|이름|타입|설명|
||||
| value | number | 시작 시간 값 (초) |
| syncedAt | Date \| null |  시작 시간이 업데이트된 시간 (옵션)<br /> 설정한 시작 시간과 오프라인에 저장된 최근 저장된 재생 시간 중 가장 최근의 값을 선택하기 위한 목적 |

## Metadata 

```javascript
{
    "title": string | null,
    "artworkUrl": string | URL | null,
    "downloadPath": string | null
}
```

|이름|타입|설명|
||||
|title | string \| null | 모바일 플레이어 타임바에 표시되는 타이틀|
|artworkUrl| string \| [URL](https://developer.mozilla.org/en-US/docs/Web/API/URL) \| null | artwork URL (옵션)|
|downloadPath | string \| null | 다운로드 파일의 경로 표시 값 <br>[타입](#launchtype)이 LaunchType.DOWNLOAD의 경우 설정|

[미디어 아이템](#mediaitem)을 구성할 때, 메타데이터를 추가할 수 있습니다.

## Clipping 

```javascript
{
    "startTime": number,
    "endTime": number | null
}
```

## Bookmark

```javascript
{
    "pos": number,
    "title": string | null
}
```

|이름|타입|설명|
||||
|pos | number | 북마크 시간 (초) (필수)|
|title | string \| null | 북마크 제목 (옵션: 지정하지 않으면 'Untitled')|

미디어 항목을 사용자 지정 시작 및 끝 위치로 잘라냅니다. 
[미디어 아이템](#mediaitem)을 구성할 때, 클리핑을 추가할 수 있습니다.

## Options

```javascript
{
    "height": number | null,
    "width": number | null
}
```

|이름|타입|설명|
||||
|height| number \| null| 플레이어의 높이 |
|width| number \| null || 플레이어의 너비 |

미디어 플레이어의 크기를 설정할 수 있습니다. [사용 예제](#사용-예제-동영상-재생)를 참고하세요.

## DeviceInfo

```javascript
{
    "platform": string,
    "platformVersion": string | null,
    "architecture": string | null,
    "model": string | null
}
```

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
        },
        metadata: {
            title: "제목입니다."
        }
    };
    playnplay.launch(LaunchType.Streaming, mediaItem, { width: 900, height: 600 });
</script>
```

