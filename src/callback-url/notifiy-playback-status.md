# 재생 상태 보고 (NotifyPlaybackStatus)

* 미디어 파일 재생 시작 / 종료 시 호출됩니다.

### 호출

```http
POST <Callback URL>
content-type: application/json
Authorization: Bearer <Authorization>

{
    "type": "NotifyPlaybackStatus",
    "sessionId": string,
    "appId": string,
    "userId": string,
    "userData": object,
    "mediaUrl": string,
    "status": "Started" | "Stopped",
    "createdAt": number
}
```

* Callback URL - 콜백 URL (콘솔에서 설정)
* Authorization - API 접근 권한 목적으로 사용 (콘솔에서 설정)

* sessionId: 세션 ID
* appId:  앱 ID
* userId: 사용자 ID
* userData - [launchAgent](../agent/home.md#launchagent) 호출 시 [입력한 정보](../agent/home.md#drm) (사용자 및 컨텐츠 식별 등의 용도)
* mediaUrl - 미디어 URL
* status: 재생 상태
* createdAt: 생성 시간 (unix epoch time)

### 반환

```json
{
    "result": "Ok"
}
```

* result
    * Ok - 성공
