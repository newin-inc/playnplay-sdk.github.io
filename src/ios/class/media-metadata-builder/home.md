# MediaMetadata.Builder

```swift
class Builder
```

제목, 아트워크, 다운로드 경로를 추가할 때 사용합니다. [.build()](#build)를 호출하여 구성을 완료합니다.

<br>

# 생성자

```swift
init()
```

파라미터 없이 미디어 메타데이터를 초기화합니다.

<br>

# 메서드

## artworkUrl(_)

```swift
func artworkUrl(_ artworkUrl: URL?) -> MediaMetadata.Builder
``` 

아트워크를 추가합니다.

<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/url">URL</a>
</div>

## build()

```swift
func build() -> MediaMetadata
``` 

추가로 입력 받은 정보로부터 메타데이터를 최종 구성합니다.

<div align="right">
참고: <a href="../../how-to-use/home.md#제목을-설정하는-예제">제목을 설정하는 예제</a>, 
<a href="../../struct/media-metadata/home.md">MediaMetadata</a>
</div>

## title(_)

```swift
func title(_ title: String?) -> MediaMetadata.Builder
``` 

제목을 추가합니다.
