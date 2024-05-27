# SubtitleConfiguration.Mode

```swift
public struct SubtitleConfiguration {

    public enum Mode : String
}
```

현재 자막의 모드를 나타냅니다.

<div align="right">
참고: <a href="../../how-to-use/home.md#자막을-추가하는-예제">자막을 추가하는 예제</a>
</div>

<br>

# 케이스

## autoSelect

```swift
case autoSelect = "autoSelect"
```

화면에 자막을 하나만 출력할 때를 나타냅니다.<br>
다른 자막들이 모두 .hidden일 때(.showing이 없을 경우), .autoSelect로 설정된 자막 중에서 목록에서 가장 앞에 있는 자막이 선택됩니다.
만약 다른 아이템 중 하나라도 .showing으로 설정되어 있으면, .autoSelect로 설정되어 있더라도 선택되지 않습니다.

## hidden

```swift
case hidden = "hidden"
```

해당 설정 값을 가진 자막들을 제외합니다. 즉, 화면에 출력하지 않습니다.

## showing

```swift
case showing = "showing"
```

해당 설정 값을 가진 자막들을 선택하여 보여줍니다. 두 개 이상의 자막도 선택하여 출력가능합니다.