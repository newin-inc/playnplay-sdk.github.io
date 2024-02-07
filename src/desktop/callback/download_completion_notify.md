# 다운로드 완료 보고

* 플레이어가 미디어 파일 다운로드 완료 시 호출

## 호출

```properties
POST <Callback Url> // (콘솔에서 설정)
content-type: application/json
Authorization: Bearer <Authorization> // API 접근 권한 목적으로 사용 (콘솔에서 설정)
```

```json
{
    "type": "NotifyDownloadCompletion",
    "appId": string,
    "userId": string,
    "userData": { // 라이선스 발급 시 입력한 정보 (사용자 및 컨텐트 식별 등의 용도)
        ...
    }
}
```

## 반환

```json
{
    "result": "Ok"
}
```


