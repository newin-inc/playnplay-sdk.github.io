# 다운로드 완료 보고 (NotifyDownloadCompletion)

* 미디어 파일 다운로드 완료 시 호출됩니다.

### 호출

```http
POST <Callback URL>
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

* Callback URL - 콜백 URL (콘솔에서 설정)
* Authorization - API 접근 권한 목적으로 사용 (콘솔에서 설정)

* appId:  앱 ID
* userId: 사용자 ID
* userData - [launchAgent](../desktop/how-to-use/launch-agent.html) 호출 시 [입력한 정보](../desktop/how-to-use/launch-agent.html#drm) (사용자 및 컨텐츠 식별 등의 용도)

### 반환

```json
{
    "result": "Ok"
}
```

* result
    * Ok - 성공
