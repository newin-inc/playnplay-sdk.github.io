# build.gradle.kts 수정

![](./img/build_gradle_kts.png)

## 안드로이드 SDK 추가

안드로이드 SDK가 포함된 디렉토리는 프로젝트 내 어디든 상관없습니다.

```kotlin
dependencies {
	implementation(files("libs/NPlayerSDK-release.aar"))
}
```

## 외부 라이브러리 의존성 추가

라이브러리 프로젝트 의존성은 안드로이드 SDK가 업데이트 됨에 따라 변동될 수 있습니다. 업데이트가 될 경우 해당 문서를 통해서 알려드리겠습니다.

```kotlin
dependencies {
	implementation("android.media 3:media3-ui:1.2.0")
	implementation("android.media 3:media3-session:1.2.0")
	implementation("androidx.media3:media3-exoplayer-smoothstreaming:1.2.0")
	implementation("android.navigation:navigation-fragment-ktx:2.7.6")
	implementation("android.navigation:navigation-compose:2.7.6")
	implementation("com.google.android.material:material:1.11.0")
	implementation("com.squareup.okhttp3:okhttp:4.11.0")

	coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.0.4")
}
```

<div align="right">
참고: <a href="https://developer.android.com/studio/write/java8-support?hl=ko#library-desugaring">디슈가링 지원</a>
</div>


## 자바 버전

안드로이드 SDK에서 사용하는 자바 관련 버전은 아래와 같습니다.

```kotlin
android {
    compileOptions {
        isCoreLibraryDesugaringEnabled = true
		sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }
    kotlinOptions {
 		jvmTarget = "1.8"
    }
}
```