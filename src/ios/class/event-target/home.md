# EventTarget

```swift
class EventTarget: Equatable
```

[addEventHandler(_)](../media-player/details.md#addeventhandler_)로 추가된 이벤트 핸들러를 [removeEventHandler(_)](../media-player/details.md#removeeventhandler_)를 통해 삭제하기 위해서 사용되는 클래스입니다.

## 사용 예제
```swift
let listener: EventTarget = player.addEventHandler(.loadStart({
    handleLoadStart()
}))

...

player.removeEventHandler(listener)
```


