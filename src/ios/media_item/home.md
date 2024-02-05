# MediaItem

## 메서드

### buildUpon() -> Builder
Builder를 사용하여 미디어 아이템에 대한 초기 설정을 합니다. 미디어 아이템의 기존 메타데이터나 DRM 구성을 바꿀 때 사용시면 됩니다. 미디어 아이템으로 사용하기 위해서는 반드시 [.build()](#build---mediaitem)를 해야합니다.
<div align="right">
참고: <a href="#mediaitembuilder">Builder</a>
</div>

### from(url:) -> MediaItem
미디어 주소를 파라미터로 입력하여 미디어 아이템을 구성합니다.

|타입|설명|
|:--:|--|
|URL|[URL](https://developer.apple.com/documentation/foundation/url) 참고|

<br><br><br><br>

--------
## MediaItem.Builder

### 생성자
미디어 아이템에 정보를 추가하고 싶을 때는 Builder()를 사용하면 됩니다. 정보 추가 후에는 .build()를 호출하여야 미디어 아이템으로 사용할 수 있습니다.

### 생성자 파라미터

|이름|타입|설명|필수|
|:--:|:--:|--|:--:|
|url|URL|[URL](https://developer.apple.com/documentation/foundation/url) 참고|O|

### 메서드

#### build() -> MediaItem
Builder를 이용하여 설정한 정보에 기반하여 미디어 아이템을 만듭니다.

#### drmConfiguration(_) -> Builder
DRM 설정을 넘겨줍니다.

|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|drmConfiguration|DrmConfiguration|앱 ID와 사용자 ID로 만든 설정|O|

#### metadataConfiguration(_) -> Builder
DRM 설정을 넘겨줍니다.

|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|metadataConfiguration|MetadataConfiguration|메타데이터 설정|O|

