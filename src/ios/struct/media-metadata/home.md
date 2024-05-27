# MediaMetadata

```swift
struct MediaMetadata
```

미디어 메타데이터를 나타내는 구조체입니다. 아래와 같은 속성 및 메서드를 제공합니다.

<br><br>
# 속성

## artworkUrl

```swift
let artworkUrl: URL?
```

|타입|설명|
|:--:|:--:|
|[URL](https://developer.apple.com/documentation/foundation/url)?|미디어 아이템의 아트워크 경로|

<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/url">URL</a>
</div>

<br><br>
## expiresOn

```swift
let expiresOn: Date?
```

|타입|설명|
|:--:|:--:|
|[Date](https://developer.apple.com/documentation/foundation/date)?|미디어 아이템의 만료 일시|

<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/date">Date</a>
</div>

<br><br>
## title

```swift
let title: String?
```

|타입|설명|
|:--:|:--:|
|String?|미디어 아이템 제목|

<br><br>
# 메서드

## buildUpon()

```swift
func buildUpon() -> MediaMetadata.Builder
```

미디어 메타 데이터를 추가하거나 수정하고자 할 때 사용하는 메서드입니다. 변경 후, [.build()](../../class/media-metadata-builder/home.md#build)를 호출하여 구성을 완료합니다.

<div align="right">
참고: <a href="#mediametadatabuilder">MediaMetadata.Builder</a><br>
<a href="../../how-to-use/home.md#제목을-설정하는-예제">제목을 설정하는 예제</a>
</div>

<br><br>
# 클래스

## MediaMetadata.Builder 

```swift
class Builder
```

미디어 메타데이터를 구성하기 위한 클래스입니다. 자세한 내용은 [MediaMetadata.Builder](../../class/media-metadata-builder/home.md)를 참고하세요.

<div align="right">
참고: <a href="../../class/media-metadata-builder/home.md">MediaMetadata.Builder</a>
</div>
