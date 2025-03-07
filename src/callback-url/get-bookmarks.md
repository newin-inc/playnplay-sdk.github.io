# 북마크 데이터 제공 (GetBookmarks)

플레이어에서 북마크 데이터가 필요할 때 호출됩니다.

참고: [launchAgent](../agent/home.html#launchagent)호출 시 [MediaItem](../agent/home.html#mediaitem)의 *useBookmarkCallback*을 true로 설정했을 때 호출됩니다.

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
    "mediaUrl": string
}
```


|이름|타입|설명|
|:--:|:--:|:--:|
|appId|string|App 아이디|
|sessionId|string|세션 아이디|
|userId|string|사용자 아이디|
|userData|object|[launchAgent](../agent/home.md#launchagent) 호출 시 [입력한 정보](../agent/home.md#drm)<br>(사용자 및 컨텐츠 식별 등의 용도)|
|mediaUrl|string|미디어 URL|

## 반환

```json
{
    "result": "Ok",
    "bookmarks": [{"title": "제목", "pos": 60}]
}
```

### result

|값|설명|
|:--:|:--:|
|Ok|성공|

### bookmarks

|값|설명|
|:--:|:--:|
|[\[Bookmark\]](../agent/home.html#bookmark)|북마크 값 (배열)|

