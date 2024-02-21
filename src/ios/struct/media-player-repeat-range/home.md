# MediaPlayer.RepeatRange

```swift
extension MediaPlayer {

    struct RepeatRange: Equatable {

        public var start: Duration

        public var end: Duration

        public func with(start: Duration) -> MediaPlayer.RepeatRange

        public func with(end: Duration) -> MediaPlayer.RepeatRange
    }
}
```

반복 모드에서 사용되는 구조체입니다. 반복 구간의 시작 위치와 종료 위치를 설정하고 변경할 수 있습니다.

## 생성자

```swift
init(start: Duration, end: Duration)
```

|이름|타입|설명|필수|
|:--:|:--:|--|:--:|
|start|[Duration](../../struct/duration/home.md)|반복 구간의 시작 위치|O|
|end|[Duration](../../struct/duration/home.md)|반복 구간의 종료 위치|O|

<details open>
<summary>
    <a href="./details.md#속성">속성</a>
</summary>

* [var start: Duration](./details.md#start)

* [var end: Duration](./details.md#end)

</details>
<br>

<details open>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

* [func with(start: Duration) -> MediaPlayer.RepeatRange](./details.md#withstart---repeatrange)

* [func with(end: Duration) -> MediaPlayer.RepeatRange](./details.md#withend---repeatrange)

* [사용 예제](./details.md#사용-예제)

</details>
<br>