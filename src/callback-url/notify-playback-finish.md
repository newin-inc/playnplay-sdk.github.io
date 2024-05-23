# 재생 종료 보고 (NotifyPlaybackFinish)

미디어 파일 재생 종료 시 호출됩니다.

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
    "type": "NotifyPlaybackFinish",
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
    },
    "reason": "Completed" | "Error" | "UserRequest"
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
|progress|object|현재 세션의 진행 상태<p></p><table><thead><tr><th>이름</th><th>타입</th><th>설명</th></thead><tbody><tr><th>playTime</th><th>number</th><th>재생 시간 (배속 X)</th></tr><tr><th>watchTime</th><th>number</th><th>시청 시간 (배속 O)</th></tr></tbody></table>|
|reason|string|미디어 종료 원인<p></p><table><thead><tr><th>값</th><th>설명</th></tr></thead><tbody><tr><th>Completed</th><th>미디어가 끝까지 재생된 후 종료</th></tr><tr><th>Error</th><th>오류로 인하여 재생 종료</th></tr><tr><th>UserRequest</th><th>사용자가 미디어를 제어하여 종료</th></tr></tbody></table>|

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
