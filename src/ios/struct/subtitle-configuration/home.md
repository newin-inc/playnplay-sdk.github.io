# SubtitleConfiguration

```swift
struct SubtitleConfiguration {

    public enum Mode : String {

        case autoSelect

        case showing

        case hidden
    }

    public class Builder {

        public init(url: URL)

        public func language(_ language: String?) -> SubtitleConfiguration.Builder

        public func label(_ language: String?) -> SubtitleConfiguration.Builder

        public func mode(_ mode: SubtitleConfiguration.Mode) -> SubtitleConfiguration.Builder

        public func build() -> SubtitleConfiguration
    }

}
```

<div align="right">
참고: <a href="../../enum/subtitle-configuration-mode/home.md">SubtitleConfiguration.Mode</a>,<br>
<a href="../../class/subtitle-configuration-builder/home.md">SubtitleConfiguration.Builder</a>,<br>
<a href="../../how-to-use/home.md#자막을-추가하는-예제">자막을 추가하는 예제</a>
</div>

자막에 관련한 구조체입니다. 현재 자막 상태를 나타내는 열거체 [Mode](../../enum/subtitle-configuration-mode/home.md)와 자막을 만드는 클래스 [Builder](../../class/subtitle-configuration-builder/home.md)로 구성되어 있습니다. 자세한 설명은 해당 문서를 참고하세요.
