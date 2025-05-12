plugins {
    id("com.android.application")
    id("kotlin-android")
    id("com.google.gms.google-services")  // ✅ Plugin de Google Services
    id("dev.flutter.flutter-gradle-plugin")  // ⚠️ Este debe ir al final
}

android {
    namespace = "com.example.flutter_application_1"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.flutter_application_1"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // ✅ Plataforma BoM de Firebase
    implementation(platform("com.google.firebase:firebase-bom:33.13.0"))

    // ✅ Aquí puedes agregar los SDKs de Firebase que necesites, por ejemplo:
    implementation("com.google.firebase:firebase-analytics-ktx")
    implementation("com.google.firebase:firebase-database-ktx")
    // Puedes agregar más según lo que uses (auth, firestore, etc.)
}
