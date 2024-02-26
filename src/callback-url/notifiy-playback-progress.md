# 재생 진행 상태 보고 (NotifyPlaybackProgress)

* 재생 중 콘솔에 설정된 Interval에 따라 주기적으로 재생 진행 상태를 보고합니다.

### 호출

```http
POST <Callback URL>
content-type: application/json
Authorization: Bearer <Authorization>

{
    "type": "NotifyPlaybackProgress",
    "appId": string,
    "sessionId": string,
    "userId": string,
    "userData": {
    ...
    },
    "position": number,
    "duration": number,
    "progress": { 
        "playTime": number,
        "watchTime": number,
    }
}
```

* Callback URL - 콜백 URL (콘솔에서 설정)
* Authorization - API 접근 권한 목적으로 사용 (콘솔에서 설정)

* appId:  앱 ID
* sessionId: 세션 ID
* userId: 사용자 ID
* userData - 라이선스 발급 시 입력한 정보 (사용자 및 컨텐츠 식별 등의 용도)
* position - 현재 재생 위치
* duration - 전체 재생 길이
* progress - 현재 세션의 진행 상태
    * playTime - 재생 시간 (배속 X)
    * watchTime - 시청 시간 (배속 O)

### 반환

```json
{
    "result": string
}
```

* result
    * Ok - 성공
    * PlaybackLimitExceeded - 재생 제한 초과 (배수 제한, 재생 횟수 등)
