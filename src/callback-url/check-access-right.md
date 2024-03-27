# 접근 권한 검사 (CheckAccessRights)

* 라이선스 발급 시 권한 검사를 위해 호출됩니다.

### 호출

```http
POST <Callback URL>
content-type: application/json
Authorization: Bearer <Authorization>

{
    "type": "CheckAccessRights",
    "appId": string,
    "mediaUrl": string,
    "deviceId": string,
    "userId": string,
    "userData": object,
    "offline": boolean,
}
```

* Callback URL - 콜백 URL (콘솔에서 설정)
* Authorization - API 접근 권한 목적으로 사용 (콘솔에서 설정)

* appId -  앱 ID
* mediaUrl - 미디어 URL
* deviceId - 디바이스 ID
* userId - 사용자 ID
* userData - [launchAgent](../desktop/how-to-use/launch-agent.html) 호출 시 [입력한 정보](../desktop/how-to-use/launch-agent.html#drm) (사용자 및 컨텐츠 식별 등의 용도)
* offline - 다운로드 컨텐츠의 경우 true, 그 외에는 false

### 반환

```json
{
    "result": "Ok" | "Expired" | "NoRights" | "DeviceLimitExceeded",
    "expiresOn": number
}
```

* result
    * Ok - 접근 권한 있음
    * Expired - 접근 권한 만료됨
    * NoRights - 접근 권한 없음
    * DeviceLimitExceeded - 디바이스 제한 초과

* expiresOn (옵션)
    * 접근 만료 시간 (unix epoch time)
    * result가 "Ok"일 때 필요
