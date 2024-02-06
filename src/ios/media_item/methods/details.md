
# buildUpon()

Builder를 사용하여 미디어 아이템에 대한 초기 설정을 합니다. 미디어 아이템의 기존 메타데이터나 DRM 구성을 바꿀 때 사용시면 됩니다. 미디어 아이템으로 사용하기 위해서는 반드시 [.build()](../class/details.md#build)를 해야합니다.
<div align="right">
참고: <a href="../class/details.md#builder">Builder</a>
</div>

```swift
func buildUpon() -> Builder
```

<br><br><br><br>

--------
# from(url:)
미디어 주소를 파라미터로 입력하여 미디어 아이템을 구성합니다.

```swift
func from(url: URL) -> MediaItem
```

|타입|설명|
|:--:|--|
|URL|[URL](https://developer.apple.com/documentation/foundation/url) 참고|
