# ClippingConfiguration

```swift
struct ClippingConfiguration
```

클리핑 설정을 위한 구조체입니다. 

<div align="right">
참고: <a href="../../how-to-use/home.md#하나의-미디어-열기">하나의 미디어 열기</a>
</div>

<br>

# 생성자

```swift
init(startTime: Duration, endTime: Duration?)
```

|이름|타입|설명|필수|
|:--:|:--:|:--:|:--:|
|startTime|Duration|시작 시간 (초)|O|
|endTime|Duration?|끝 시간 (초) (지정하지 않으면 미디어의 끝 시간으로 설정)|X|

미디어 항목을 사용자 지정 시작 및 끝 위치로 잘라냅니다. 

<br>

# 속성

## startTime

```swift
let startTime: Duration
```

|타입|설명|
|:--:|:--:|
|[Duration](../../struct/duration/home.md)|시작 시간 (초)|

<div align="right">
참고: <a href="../../struct/duration/home.md">Duration</a><br>
<a href="../../../agent/home.md#clipping">Clipping 내 endTime</a>
</div>

## endTime

```swift
var endTime: Duration? = nil
```

|타입|설명|
|:--:|:--:|
|[Duration](../../struct/duration/home.md)?|끝 시간 (초)|

<div align="right">
참고: <a href="../../struct/duration/home.md">Duration</a><br>
<a href="../../../agent/home.md#clipping">Clipping 내 endTime</a>
</div>
