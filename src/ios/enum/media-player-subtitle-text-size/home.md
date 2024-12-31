# MediaPlayer.SubtitleTextSize

```swift
public enum SubtitleTextSize
```

자막 크기를 나타내는 열거형입니다. 자막 크기를 픽셀 단위 또는 비율로 표현할 수 있습니다.

<div align="right">
참고: <a href="../../struct/media-player-view-controller-configuration/home.md">MediaPlayerViewController.Configuration</a>
</div>

<br>

# 케이스

## pixel

```swift
case pixel(Float)
```

자막 크기를 픽셀 단위로 설정합니다.

## scale

```swift
case scale(Float)
```

자막 크기를 비율로 설정합니다.