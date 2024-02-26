package com.example.kmpandroid.shared

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform