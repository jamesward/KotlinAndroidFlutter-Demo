plugins {
    alias(libs.plugins.kotlin.multiplatform)
    //alias(libs.plugins.kotlin.cocoapods)
    alias(libs.plugins.android.kotlin.multiplatform.library)
}

kotlin {
    androidLibrary {
        namespace = "com.example.kmpandroid.shared"
        compileSdk = 34
    }

    iosX64 {
        binaries {
            framework {
                baseName = "Shared"
            }
        }
    }
    iosArm64 {
        binaries {
            framework {
                baseName = "Shared"
            }
        }
    }
    iosSimulatorArm64 {
        binaries {
            framework {
                baseName = "Shared"
            }
        }
    }

    /*
    cocoapods {
        version = "0.0.1"
    }
     */
}