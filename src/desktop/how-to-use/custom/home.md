# 커스텀 페이지

## playnplay: startService()

```javascript
playnplay.startService= async (appId, scriptURL, options);
```
|이름|타입|설명|
||||
|appId|string| App ID|
|scriptURL| URL \| string | 서비스 스크립트 경로|
|options| [Options](#options) | 서비스 스크립트 경로|

PlaynPlay 보안 서비스를 실행합니다. 개발툴을 사용하려면 반드시 호출해야합니다.

커스텀 페이지와 같은 경로에 '[playnplay-service.js](https://sample.playnplay.com/test/custom/sample/playnplay-service.js)'를 생성하고 다음 코드를 추가합니다. (이미 다른 서비스워커를 사용 중이라면 해당 서비스워커에 추가합니다.)
```javascript
self.importScripts('https://app.playnplay.com/modules/playnplay-service.js');
```
scriptURL이 커스텀 페이지와 다른 경로에 있을 경우 scope를 지정해야합니다. 자세한 내용을 다음 [링크](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer/register)를 참조하세요.

## Options

```javascript
{
    "scope": string | null
}
```

|이름|타입|설명|
||||
|scope| string \| null | 서비스 등록 스코프 |

## window: openDevTools()

개발툴을 엽니다. 

개발 시 디버깅 용도로만 사용하고 프로덕션 환경에 사용하지 않을 것을 권합니다.

## HTMLMediaElement: open()

|이름|타입|설명|
||||
|mediaItem| [MediaItem](../../../agent/home.md#mediaitem) \| URL \| string | 재생 항목 |

미디어를 엽니다.

## 예시

```html
<script>
    const appId = 'xxx-xxx-xxx';
    playnplay.startService(appId, './playnplay-service.js');
    window.addEventListener('keydown', (event) => {
        if (event.key === 'F10' && event.ctrlKey) {
            window.openDevTools();
        }
    });
    document.addEventListener('DOMContentLoaded', () => {
        const video = document.querySelector('#player-container video');
        const mediaItem = {
            url: "https://yourcdn.com/video/1.mp4"
        };
        video.open(mediaItem);
    });
</script>
<body>
    <div id="player-container">
        <video controls playsinline autoplay preload="auto" crossorigin="anonymous"></video>
    </div>
    <script src="https://app.playnplay.com/modules/nplayer/nplayer.js"></script>
    <script>
        const player = new NPlayer('#player-container video');
    </script>
</body>
```