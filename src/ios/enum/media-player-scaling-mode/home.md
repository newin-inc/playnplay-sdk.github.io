# MediaPlayer.ScalingMode

```swift
extension MediaPlayer {

    public enum ScalingMode
}
```

현재 미디어 화면의 스케일링 상태를 나타냅니다.

<div align="right">
참고: <a href="../../class/media-player/home.md#scalingmode">scalingMode</a>
</div>

<br><br>
# 케이스

## aspectFill

```swift
case aspectFill
```

화면비를 유지하며, 화면에 빈 틈이 없이 가득 채울 수 있는 모드

## aspectFit

```swift
case aspectFit
```

화면비를 유지하며 화면에 가려지는 것이 없이 미디어를 보여줄 수 있는 최대 크기 모드

## fill

```swift
case fill
```

화면비를 무시하고, 화면에 빈 틈이 없이 가득 채울 수 있는 모드
