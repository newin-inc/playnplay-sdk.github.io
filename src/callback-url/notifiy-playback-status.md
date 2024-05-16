# 재생 상태 보고 (NotifyPlaybackStatus)

미디어 파일 재생 시작 및 종료 시 호출됩니다.

## 호출

|||
|:--:|:--:|
|Callback URL|콜백 URL (콘솔에서 설정)|
|Authorization|API 접근 권한 목적으로 사용 (콘솔에서 설정)|

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

|이름|타입|설명|
|:--:|:--:|:--:|
|sessionId|string|세션 아이디|
|appId|string|App 아이디|
|userId|string|사용자 아이디|
|userData|object|[launchAgent](../agent/home.md#launchagent) 호출 시 [입력한 정보](../agent/home.md#drm)<br>(사용자 및 컨텐츠 식별 등의 용도)|
|mediaUrl|string|미디어 URL|
|status|string|재생 상태<p></p><table border-spacing="10%"><thead><tr><th>값</th><th>설명</th></tr></thead><tbody><tr><th>"Started"</th><th>미디어 재생 시작</th></tr><tr><th>"Stopped"</th><th>미디어 종료</th></tr></tbody></table>|
|createdAt|number|해당 JSON 생성 일시<br>(단위: [Unix epoch time](https://developer.mozilla.org/en-US/docs/Glossary/Unix_time))|

## 반환

```json
{
    "result": "Ok"
}
```

### result

|값|설명|
|:--:|:--:|
|Ok|성공|