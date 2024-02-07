# 라이선스 발급

* 미디어 재생 및 다운로드를 위한 라이선스이며, 사용자의 ID, 미디어 URL, 컨텐트 접근 만료 시간 등을 세팅할 수 있습니다.

* 서비스 백엔드에서 PlaynPlay 인증서버로부터 라이선스를 발급받아 필요한 서비스에 전달하는 것을 권장하며, 유효하지 않은 접근 차단뿐만 아니라 콘솔 사이트와 연동에 필요한 중요한 기본 절차입니다.

* 발급된 라이선스의 유효시간은 1분입니다.


## 호출

```properties
POST https://api.playnplay.com/app/{APP_ID}/license
content-type: application/json
x-api-key: {APP_KEY}
```

```json

{
    "userId": string, // 사용자 ID
    "mediaKey": string, // 미디어 Key (미디어 식별 및 다운로드 파일의 경로 표시 값으로 사용)
    "mediaUrl": string, // 미디어 URL
    "thumbnailUrl": string, // 썸네일 URL (옵션)
    "subtitles": [ // 자막 정보 (옵션)
        {
            "src": string, // 자막 URL
            "srclang": string, // 자막 언어
            "label": string, // 자막 레이블
            "show": boolean // 자막 표출 여부
        },
        ...
    ],
    "userData": { // Callback URL에 전달할 데이터 (옵션)
        ...
    },
    "expiresOn": number // 콘텐츠 접근 만료 시간
}
```

## 반환

```json
{
    "data": {
        "code": string // 라이선스 코드
    }
}
```