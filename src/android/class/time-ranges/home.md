# TimeRanges

```kotlin
import com.newin.nplayer.sdk.utils.TimeRanges
```

```kotlin
data class TimeRanges(private val ranges: ArrayList<TimeRange>)
```

buffered 속성에서 사용되는 데이터 클래스다.


## 생성자 파라미터

|이름|타입|설명|필수|
|:--:|:--:|--|:--:|
|ranges|ArrayList\<[TimeRange](#timerange)\>|구간 범위 값들의 array list|O|

<details open>
<summary>
    <a href="./details.md#속성">속성</a>
</summary>

* [val length: Int](./details.md#length)

</details>
<br>

<details open>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

* [fun start(index: Int): Duration](./details.md#withstart)

* [fun end(index: Int): Duration](./details.md#withend)

* [사용 예제](./details.md#사용-예제-1)

</details>
<br>