# 재생 진행 상태 보고

* 플레이어가 재생 중 콘솔에 설정된 Interval에 따라 주기적으로 호출합니다.

## 호출

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

## 반환

```json
{
    "result": string // "Ok" | "PlaybackLimitExceeded",
}
```

### result

|반환 값|설명|
|:--:|:--|
|Ok| 성공 |
| PlaybackLimitExceeded | 재생 제한 초과 (배수 제한, 재생 횟수 등) |

