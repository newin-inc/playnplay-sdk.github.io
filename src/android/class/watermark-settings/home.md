# WatermarkSettings

```kotlin
import com.newin.nplayer.sdk.WatermarkSettings
```

```kotlin
data class WatermarkSettings {
    val duration: Duration
    val interval: Duration
    val position: Position
    val text: String
    val textColor: String
    val textOpacity: Double
    val textSize: Double

    enum class Position
}
```

## 속성

| 이름 | 타입 | 설명 | 비고 |
|:--:|:--:|--|:--:|
|duration|[Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|유지 시간||
|interval|[Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|출력 주기||
|position|[Position](#watermarksettingsposition)|워터마크의 위치||
|text|String|워터마크 출력 내용||
|textColor|String|글자 색상|예: #ff00ff|
|textOpacity|Double|글자의 불투명도|범위: 0.0~1.0|
|textSize|Double|글자 크기|범위: 0.0~1.0|


## 열거형

### WatermarkSettings.Position
```kotlin
enum class Position {
    TopLeft,
    TopRight,
    BottomLeft,
    BottomRight,
    Center,
    RandomInRegion1,
    RandomInRegion2,
    RandomInRegion3,
    RandomInRegion4,
    RandomInRegion5,
    RandomInRegion6,
    RandomInRegionAll;
}
```
워터마크의 위치를 나타내는 열거형입니다.

| 이름 | 위치 |
|:--:|:--:|
|TopLeft|좌측 상단 고정|
|TopRight|우측 상단 고정|
|BottomLeft|좌측 하단 고정|
|BottomRight|우측 하단 고정|
|Center|가운데 고정|
|RandomInRegion1|좌측 상단 영역에서 무작위|
|RandomInRegion2|가운데 상단 영역에서 무작위|
|RandomInRegion3|우측 상단 영역에서 무작위|
|RandomInRegion4|좌측 하단 영역에서 무작위| 
|RandomInRegion5|가운데 하단 영역에서 무작위|
|RandomInRegion6|우측 하단 영역에서 무작위|
|RandomInRegionAll|전체 영역에서 무작위|
