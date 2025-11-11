# 재생 진행 상태 보고 (NotifyPlaybackProgress)

재생 중 콘솔에 설정된 [Interval](./home.md#interval-설정)에 따라 주기적으로 재생 진행 상태를 보고합니다.

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
    "type": "NotifyPlaybackProgress",
    "appId": string,
    "sessionId": string,
    "userId": string,
    "userData": object,
    "mediaUrl": string,
    "position": number,
    "duration": number,
    "progress": { 
        "playTime": number,
        "watchTime": number,
    }
}
```


|이름|타입|설명|
|:--:|:--:|:--:|
|appId|string|App 아이디|
|sessionId|string|세션 아이디|
|userId|string|사용자 아이디|
|userData|object|[launchAgent](../agent/home.md#launchagent) 호출 시 [입력한 정보](../agent/home.md#drm)<br>(사용자 및 컨텐츠 식별 등의 용도)|
|mediaUrl|string|미디어 URL|
|position|number|현재 재생 위치 (단위: 밀리초)|
|duration|number|전체 재생 길이 (단위: 밀리초)|
|progress|object|현재 세션의 진행 상태<p></p><table><thead><tr><th>이름</th><th>타입</th><th>설명</th></thead><tbody><tr><th>playTime</th><th>number</th><th>재생 시간<br/>(비디오 시간 기준, 예: 2배속으로 1초 재생 시 2초)</th></tr><tr><th>watchTime</th><th>number</th><th>시청 시간<br/>(실제 시간 기준, 예: 2배속으로 1초 재생 시 1초)</th></tr></tbody></table>|

## 반환

```json
{
    "result": "Ok" | "PlaybackLimitExceeded"
}
```

### result

|값|설명|
|:--:|:--:|
|Ok|성공|
|PlaybackLimitExceeded|재생 제한 초과 (배수 제한, 재생 횟수 등)|
