# 접근 권한 검사 (CheckAccessRights)

라이선스 발급 시 권한 검사를 위해 호출됩니다.

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
    "type": "CheckAccessRights",
    "appId": string,
    "mediaUrl": string,
    "deviceId": string,
    "userId": string,
    "userData": object,
    "offline": boolean,
}
```

|이름|타입|설명|
|:--:|:--:|:--:|
|appId|string|App 아이디|
|mediaUrl|string|미디어 URL|
|deviceId|string|디바이스 아이디|
|userId|string|사용자 아이디|
|userData|object|[launchAgent](../agent/home.md#launchagent) 호출 시 [입력한 정보](../agent/home.md#drm)<br>(사용자 및 컨텐츠 식별 등의 용도)|
|offline|boolean|<table><thead><tr><th>값</th><th>설명</th></tr></thead><tbody><tr><th>true</th><th>다운로드 컨텐츠</tr></tr><tr><th>false</th><th>그 외</th></tr></tbody></table>|

## 반환

```json
{
    "result": "Ok" | "Expired" | "NoRights" | "DeviceLimitExceeded",
    "expiresOn": number
}
```

### result

|값|설명|
|:--:|:--:|
|Ok|접근 권한 있음|
|Expired|접근 권한 만료됨|
|NoRights|접근 권한 없음|
|DeviceLimitExceeded|디바이스 제한 초과|

### expiresOn (옵션)

result가 "Ok"일 때, 접근 만료 일시 값이 필요합니다.
이때, [Unix epoch time](https://developer.mozilla.org/en-US/docs/Glossary/Unix_time)으로 표시합니다.