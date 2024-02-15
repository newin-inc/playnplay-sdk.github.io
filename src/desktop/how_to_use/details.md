# 재생 방법

- 미디어 재생 및 다운로드를 위해 라이선스 키를 PlaynPlay 인증 서버로부터 발급 받아야 합니다.
    * <font color="red">주의</font> : 라이선스 키 발급 절차는 사용자에게 노출되면 안 됩니다.
- 발급받은 라이선스를 재생할 미디어 URL에 세팅을 하고, 이 URL을 launchAgent 함수에 파라미터로 전달하여 플레이어를 실행합니다. 

## 라이선스 발급

* 여기서 설명하는 라이선스는 미디어 재생 및 다운로드를 위한 라이선스이며, 사용자의 ID, 미디어 URL, 컨텐트 접근 만료 시간 등을 세팅할 수 있습니다.
 
* 서비스 백엔드에서 PlaynPlay 인증서버로부터 라이선스를 발급받아 필요한 서비스에 전달하는 것을 권장하며, 유효하지 않은 접근 차단뿐만 아니라 콘솔 사이트와의 연동에 필요한 중요한 기본 절차입니다.

* 발급된 라이선스의 유효시간은 1분입니다.

### 호출

```properties
POST https://api.playnplay.com/app/{APP_ID}/license
content-type: application/json
x-api-key: {APP_KEY}
```

```json

{
    "userId": string, // 사용자 ID
    "mediaKey": string, // 미디어 Key (미디어 식별 및 다운로드 파일의 경로 표시 값으로 사용)
    "mediaUrl": string, // 미디어 URL
    "thumbnailUrl": string, // 썸네일 URL (옵션)
    "subtitles": [ // 자막 정보 (옵션)
        {
            "src": string, // 자막 URL
            "srclang": string, // 자막 언어
            "label": string, // 자막 레이블
            "show": boolean // 자막 표출 여부
        },
        ...
    ],
    "userData": { // Callback URL에 전달할 데이터 (옵션)
        ...
    },
    "expiresOn": number // 콘텐츠 접근 만료 시간
}
```

### 반환

```json
{
    "data": {
        "code": string // 라이선스 코드
    }
}
```

## Agent(플레이어) 실행

* 플레이어를 실행시켜 DRM 패키징 된 미디어 파일을 재생 및 다운로드 할 수 있습니다. 

* 플레이어 실행 절차는 Windows, macOS, iOS, Android 동일합니다.

```typescript
async function launchAgent(type, url, options);
```

* type: 실행 타입

|타입|설명|
|:--:|:--|
|stream| 동영상 재생|
|download| 동영상 다운로드|
|open|커스텀 페이지 열기|

* url: 재생, 다운로드 또는 커스텀 페이지 URL

    * 재생 및 다운로드 URL에 라이선스 코드를 추가 (<font color="red">\_NDRM\_LIC\_={license}</font>)

        * 예) https://somecdn.com/video/sample.mp4?<font color="red">\_NDRM\_LIC\_={license}</font>

        * [1. 라이선스 발급](#라이선스-밟급) 참조

* options: 추가 옵션

|속성|타입|설명|
|:--:|:--:|:--:|
|returnUrl|string \| URL \| undefined| 리턴Url 설정을 위한 속성 |
|seekable|boolean \| undefined| Seek 기능을 허용할 것인가에 대한 속성 |

### 실행 함수
[https://app.playnplay.com/modules/agent.min.js](https://app.playnplay.com/modules/agent.min.js)<br/>
[https://app.playnplay.com/modules/agent.js](https://app.playnplay.com/modules/agent.js)

```typescript
const LaunchType = {
    STREAMING: 'stream', // 동영상 재생
    DOWNLOAD: 'download', // 동영상 다운로드
    OPEN: 'open' // 커스텀 페이지
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

### 사용 예

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

\
\
\
\

# 콜백

* 미디어 재생, 다운로드 제어를 위해 플레이어는 고객사가 콘솔사이트에서 세팅한 Callback URL을 호출하며, 응답에 따라 동작합니다. 또한 콘솔사이트에 세팅된 interval에 맞춰 주기적으로 Callback URL에 재생 정보를 전달하며, 진도율 계산 등 필요에 따라 데이터 활용이 가능합니다.

## 접근 권한 검사

* 플레이어가 세션 생성시 호출

### 호출

```properties
POST <Callback Url> // (콘솔에서 설정)
content-type: application/json
Authorization: Bearer <Authorization> // API 접근 권한 목적으로 사용 (콘솔에서 설정)
```

```json
{
    "type": "CheckAccessRights",
    "appId": string,
    "mediaUrl": string,
    "deviceId": string,
    "sessionId": string,
    "userId": string,
    "userData": { // 라이선스 발급 시 입력한 정보 (사용자 및 컨텐트 식별 등의 용도)
    ...
    }
}
```

### 반환

```json
{
    "result": string, // "Ok" | "Expired" | "NoRights"
    "expiresOn": number // unix epoch time when result is Ok
}
```

#### result

|반환 값|설명|
|:--:|:--|
|Ok| 접근 권한이 있음 |
|Expired| 접근 권한이 만료됨 |
|NoRights| 접근 권한이 없음 |

#### expiresOn (옵션)

* 접근 권한이 있을 경우 만료 시간을 설정할 수 있습니다.

## 재생 진행 상태 보고

* 플레이어가 재생 중 콘솔에 설정된 Interval에 따라 주기적으로 호출합니다.

### 호출

```properties
POST <Callback Url> // (콘솔에서 설정)
content-type: application/json
Authorization: Bearer <Authorization> // API 접근 권한 목적으로 사용 (콘솔에서 설정)
```

```json
{
    "type": "NotifyPlaybackProgress",
    "appId": string,
    "sessionId": string,
    "userId": string,
    "userData": { // 라이선스 발급 시 입력한 정보 (사용자 및 컨텐트 식별 등의 용도)
    ...
    },
    "position": number, // 현재 재생 위치
    "duration": number, // 전체 재생 길이
    "progress": { // 현재 세션의 진행 상태
        "playTime": number, // 재생 시간 (배속 X)
        "watchTime": number, // 시청 시간 (배속 O)
    }
}
```

### 반환

```json
{
    "result": string // "Ok" | "PlaybackLimitExceeded",
}
```

#### result

|반환 값|설명|
|:--:|:--|
|Ok| 성공 |
| PlaybackLimitExceeded | 재생 제한 초과 (배수 제한, 재생 횟수 등) |


## 다운로드 완료 보고

* 플레이어가 미디어 파일 다운로드 완료 시 호출

### 호출

```properties
POST <Callback Url> // (콘솔에서 설정)
content-type: application/json
Authorization: Bearer <Authorization> // API 접근 권한 목적으로 사용 (콘솔에서 설정)
```

```json
{
    "type": "NotifyDownloadCompletion",
    "appId": string,
    "userId": string,
    "userData": { // 라이선스 발급 시 입력한 정보 (사용자 및 컨텐트 식별 등의 용도)
        ...
    }
}
```

### 반환

```json
{
    "result": "Ok"
}
```
