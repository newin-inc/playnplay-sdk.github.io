# currentSrc

MediaPlayer.currentSrc는 미디어 리소스의 uri를 의미하는 속성입니다.

| 타입 | 설명 | 설정 | 기본값 |
|:---:|----|:---:|:---:|
| android.net.Uri? | 설정 시, 교체할 미디어 아이템의 Uri<br>반환 시, 현재 선택된 미디어 아이템의 Uri | 가능 | null |

\
사용 예제
```kotlin
mediaPlayer.currentSrc = "미디어주소.mp4"

val currentUri = mediaPlayer.currentSrc // "미디어주소.mp4"
```