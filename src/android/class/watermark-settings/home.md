# WatermarkSettings

```kotlin
import com.newin.nplayer.sdk.WatermarkSettings
```

```kotlin
data class WatermarkSettings
```

워터마크 설정을 나타내는 데이터 클래스입니다.

<br>

# 속성

| 이름 | 타입 | 설명 | 비고 |
|:--:|:--:|:--:|:--:|
|duration|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|유지 시간||
|interval|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|출력 주기||
|position|[WatermarkSettings.Position](#watermarksettingsposition)|워터마크의 위치||
|text|String|워터마크 출력 내용||
|textColor|String|글자 색상|예: #ff00ff|
|textOpacity|Double|글자의 불투명도|범위: 0.0~1.0|
|textSize|Double|글자 크기|범위: 0.0~1.0|

<br>

# 열거형

## WatermarkSettings.Position

```kotlin
import com.newin.nplayer.sdk.WatermarkSettings.Position
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
