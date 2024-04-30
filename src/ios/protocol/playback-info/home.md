# PlaybackInfo

```swift
public protocol PlaybackInfo {

    var artworkUrl: URL? { get }
    var duration: Duration? { get }
    var expiresOn: Date? { get }
    var lastPlayedTime: Duration? { get }
    var url: URL { get }
}
```

[재생 정보 저장소](../../class/playback-info-repository/home.md)에 저장된 정보를 나타내는 프로토콜입니다. [재생 정보 저장소](../../class/playback-info-repository/home.md)의 [shared](../../class/playback-info-repository/home.md#shared) 속성과 [find(by:)](../../class/playback-info-repository/home.md#findby) 메서드를 사용하여 미디어의 정보를 가져올 수 있습니다.

사용 예제: 현재 재생 중인 미디어의 정보를 가져오는 예제
```swift
if let currentSrc = mediaPlayer.currentSrc {

    let playbackInfo = PlaybackInfoRepository.shared.find(by: currentSrc)

    ...
}
```

## 속성

### artworkUrl
```swift
var artworkUrl: URL? { get }
```
|타입|설명|
|:--:|:--|
|[URL](https://developer.apple.com/documentation/foundation/url)|미디어 아이템의 아트워크 주소|

미디어 아이템의 아트워크 경로를 나타내는 속성입니다.

사용 예제: 현재 미디어의 아트워크 url을 가져오는 예제
```swift
if let currentSrc = mediaPlayer.currentSrc {

    let playbackInfo = PlaybackInfoRepository.shared.find(by: currentSrc)

    if let artworkUrl = playbackInfo?.artworkUrl { 
        ...    
    }
}
```

### duration
```swift
var duration: Duration? { get }
```
|타입|설명|
|:--:|--|
|[Duration](../../struct/duration/home.md)|미디어 아이템의 전체 길이|

미디어 아이템의 전체 길이를 나타내는 속성입니다.

사용 예제: 현재 미디어의 전체 길이를 가져오는 예제
```swift
if let currentSrc = mediaPlayer.currentSrc {
    
    let playbackInfo = PlaybackInfoRepository.shared.find(by: currentSrc)

    if let duration = playbackInfo?.duration { // Duration 타입의 전체 길이
        ... 
    }
}
```

### expiresOn
```swift
var expiresOn: Date? { get }
```
|타입|설명|
|:--:|--|
|[Date](https://developer.apple.com/documentation/foundation/date)|만료 일시|

미디어 아이템의 만료 일시를 나타내는 속성입니다.

사용 예제: 현재 미디어의 만료 기간을 가져오는 예제
```swift
if let currentSrc = mediaPlayer.currentSrc {
    
    let playbackInfo = PlaybackInfoRepository.shared.find(by: currentSrc)

    if let expiresOn = playbackInfo?.expiresOn {    // 2024-04-15 07:56:12 +0000
        ...
    }
}
```

### lastPlayedTime
```swift
var lastPlayedTime: Duration? { get }
```
|타입|설명|
|:--:|--|
|[Duration](../../struct/duration/home.md)|마지막 재생 위치|

미디어 아이템이 마지막으로 재생한 위치를 나타내는 속성입니다.

사용 예제: 현재 미디어의 마지막 재생 위치를 가져오는 예제
```swift
if let currentSrc = mediaPlayer.currentSrc {
    
    let playbackInfo = PlaybackInfoRepository.shared.find(by: currentSrc)

    if let lastPlayedTime = playbackInfo?.lastPlayedTime {  // Duration 타입의 마지막 재생 위치
        ...
    }
}
```

### url
```swift
var url: URL { get }
```
|타입|설명|
|:--:|:--|
|[URL](https://developer.apple.com/documentation/foundation/url)|재생 미디어의 주소|

미디어의 주소를 나타내는 속성입니다. 재생 정보 저장소로부터 정보를 가져올 때, 이 미디어 주소를 사용합니다.

사용 예제: 현재 미디어의 마지막 재생 위치를 가져오는 예제
```swift
if let currentSrc = mediaPlayer.currentSrc {
    
    let playbackInfo = PlaybackInfoRepository.shared.find(by: currentSrc)

    if let url = playbackInfo?.url {
        assert(url == currentSrc)
    }

    if let lastPlayedTime = playbackInfo?.lastPlayedTime {  // Duration 타입의 마지막 재생 위치
        ...
    }
}
```

