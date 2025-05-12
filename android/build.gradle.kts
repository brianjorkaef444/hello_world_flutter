buildscript {
    repositories {
        google()  // Asegúrate de tener esto
        mavenCentral()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:7.4.2'  // Reemplaza con la versión correspondiente
        classpath 'com.google.gms:google-services:4.4.2'  // Asegúrate de que esta línea esté aquí
    }
}

allprojects {
    repositories {
        google()  // Asegúrate de tener esto
        mavenCentral()
    }
}
