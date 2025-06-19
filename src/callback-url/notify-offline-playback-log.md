# 오프라인 재생 정보 보고 (NotifyOfflinePlaybackLog)

오프라인 환경에서 재생 관련 보고를 전송하지 못했을 경우 온라인에 연결되면 로컬에 저장된 재생 정보를 보고합니다.

|재생 시작|재생 종료|적용|
|:--:|:--:|:--:|
|오프라인|오프라인|O|
|오프라인|온라인|O|
|온라인|오프라인|O|
|온라인|온라인|X|

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
    "type": "NotifyOfflinePlaybackLog",
    "appId": string,
    "userId": string,
    "userData": object,
    "mediaUrl": string,
    "items": [
        {
            "sessionId": string,
            "startedAt": number,
            "stoppedAt": number,
            "position": number,
            "duration": number,
            "progress": { 
                "playTime": number,
                "watchTime": number,
            },
            "finishReason": "Ended" | "Error" | "UserExited"
        }
    ]
}
```

|이름|타입|설명|
|:--:|:--:|:--:|
|appId|string|App 아이디|
|userId|string|사용자 아이디|
|userData|object|[launchAgent](../agent/home.md#launchagent) 호출 시 [입력한 정보](../agent/home.md#drm)<br>(사용자 및 컨텐츠 식별 등의 용도)|
|mediaUrl|string|미디어 URL|
|items|[[Log](#log)]|로그|

### Log

|이름|타입|설명|
|:--:|:--:|:--:|
|sessionId|string|세션 아이디|
|startedAt|number|시작 시간|
|stoppedAt|number|종료 시간|
|position|number|현재 재생 위치 (단위: 밀리초)|
|duration|number|전체 재생 길이 (단위: 밀리초)|
|progress|object|현재 세션의 진행 상태<p></p><table><thead><tr><th>이름</th><th>타입</th><th>설명</th></thead><tbody><tr><th>playTime</th><th>number</th><th>재생 시간 (배속 X)</th></tr><tr><th>watchTime</th><th>number</th><th>시청 시간 (배속 O)</th></tr></tbody></table>|
|finishReason|string|미디어 종료 원인<p></p><table><thead><tr><th>값</th><th>설명</th></tr></thead><tbody><tr><th>Ended</th><th>미디어가 끝까지 재생된 후 종료</th></tr><tr><th>Error</th><th>오류로 인하여 재생 종료</th></tr><tr><th>UserExited</th><th>사용자가 미디어를 제어하여 종료</th></tr></tbody></table>|

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
