# Callback URL

* 미디어 재생, 다운로드 제어를 위해 플레이어는 고객사가 콘솔사이트에서 세팅한 Callback URL을 호출하며, 응답에 따라 동작합니다. 또한 콘솔사이트에 세팅된 interval에 맞춰 주기적으로 Callback URL에 재생 정보를 전달하며, 진도율 계산 등 필요에 따라 데이터 활용이 가능합니다.

## 접근 권한 검사

* 플레이어가 세션 생성시 호출

### 호출

```http
POST <Callback Url>
content-type: application/json
Authorization: Bearer <Authorization>

{
    "type": "CheckAccessRights",
    "appId": string,
    "mediaUrl": string,
    "deviceId": string,
    "userId": string,
    "userData": {
    ...
    }
}
```

* Callback Url - 콜백 Url, 콘솔에서 설정
* Authorization - API 접근 권한 목적으로 사용, 콘솔에서 설정
* userData - 라이선스 발급 시 입력한 정보 (사용자 및 컨텐츠 식별 등의 용도)

### 반환

```json
{
    "result": string, // "Ok" | "Expired" | "NoRights | DeviceLimitExceeded"
    "expiresOn": number // result가 "Ok"일 때 유닉스 시간(unix epoch time)
}
```

* result
    * Ok - 접근 권한이 있음
    * Expired - 접근 권한이 만료됨
    * NoRights - 접근 권한이 없음
    * DeviceLimitExceeded - 디바이스 제한 초과

* expiresOn (옵션)
    * result가 "Ok"일 때 유닉스 시간(unix epoch time)

## 재생 진행 상태 보고

* 플레이어가 재생 중 콘솔에 설정된 Interval에 따라 주기적으로 호출합니다.

### 호출

```http
POST <Callback Url>
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

* Callback Url - 콜백 Url, 콘솔에서 설정
* Authorization - API 접근 권한 목적으로 사용, 콘솔에서 설정
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

## 다운로드 완료 보고

* 플레이어가 미디어 파일 다운로드 완료 시 호출

### 호출

```http
POST <Callback Url>
content-type: application/json
Authorization: Bearer <Authorization>

{
    "type": "NotifyDownloadCompletion",
    "appId": string,
    "userId": string,
    "userData": {
        ...
    }
}
```

* Callback Url - 콜백 Url, 콘솔에서 설정
* Authorization - API 접근 권한 목적으로 사용, 콘솔에서 설정
* userData - 라이선스 발급 시 입력한 정보 (사용자 및 컨텐츠 식별 등의 용도)

### 반환

```json
{
    "result": "Ok"
}
```

* result
    * Ok - 성공