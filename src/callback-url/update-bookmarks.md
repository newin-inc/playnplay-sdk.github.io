# 북마크 업데이트 (UpdateBookmarks)

북마크 데이터 변경 시 호출됩니다. 

참고: [launchAgent](../agent/home.html#launchagent)호출 시 [MediaItem](../agent/home.html#mediaitem)의 bookmarks에 북마크 데이터를 전달했을 경우에만 호출됩니다.

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
    "type": "UpdateBookmarks",
    "appId": string,
    "sessionId": string,
    "userId": string,
    "userData": object,
    "mediaUrl": string,
    "bookmarks": [Bookmark]
}
```


|이름|타입|설명|
|:--:|:--:|:--:|
|appId|string|App 아이디|
|sessionId|string|세션 아이디|
|userId|string|사용자 아이디|
|userData|object|[launchAgent](../agent/home.md#launchagent) 호출 시 [입력한 정보](../agent/home.md#drm)<br>(사용자 및 컨텐츠 식별 등의 용도)|
|mediaUrl|string|미디어 URL|
|bookmarks|\[[Bookmark](../agent/home.html#bookmark)\]|업데이트된 북마크 데이터|

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

