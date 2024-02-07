# Agent(플레이어) 실행

* 플레이어를 실행시켜 DRM 패키징 된 미디어 파일을 재생 및 다운로드 할 수 있습니다. 

* 플레이어 실행 절차는 Windows, macOS, iOS, Android 동일합니다.

* type: 실행 타입

    * “stream” - 재생

    * “download” - 다운로드

    * “open” - 커스텀 페이지 열기

* url: 재생, 다운로드 또는 커스텀 페이지 URL

    * 재생 및 다운로드 URL에 라이선스 코드를 추가 (<font color="red">\_NDRM\_LIC\_={license}</font>)

        * 예) https://somecdn.com/video/sample.mp4?<font color="red">\_NDRM\_LIC\_={license}</font>

        * [1. 라이선스 발급](./license_issue.md#라이선스-발급) 참조


* 실행 함수 ([https://app.playnplay.com/modules/agent.min.js](https://app.playnplay.com/modules/agent.min.js))

```typescript
const LaunchType = {
    STREAMING: 'stream', // 동영상 재생
    DOWNLOAD: 'download', // 동영상 다운로드
    OPEN: 'open', // 커스텀 페이지
};

/**
* @typedef {Object} Options
* @property {string | URL | undefined} returnUrl
* @property {boolean | undefined} seekable
*/

/**
*
* @param {LaunchType} type
* @param {string | URL} url
* @param {Options | undefined} options
*/
async function launchAgent(type, url, options);
```

* 사용 예

```html
<script type="text/javascript" src="https://app.playnplay.com/modules/agent.js">
<script type="text/javascript">

const contentUrl = ..

const options = {
    returnUrl: ..,
    seekable: true
}

launchAgent(LaunchType.STREAM, contentUrl, options);
</script>
```


