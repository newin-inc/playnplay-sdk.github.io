# 접근 권한 검사

* 플레이어가 세션 생성시 호출

## 호출

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

## 반환

```json
{
    "result": string, // "Ok" | "Expired" | "NoRights"
    "expiresOn": number // unix epoch time when result is Ok
}
```

### result

|반환 값|설명|
|:--:|:--|
|Ok| 접근 권한 있음 |
|Expired| 접근 권한이 만료됨 |
|NoRights| 접근 권한이 없음 |

### expiresOn (옵션)

* 접근 권한이 있을 경우 만료 시간을 설정할 수 있음
