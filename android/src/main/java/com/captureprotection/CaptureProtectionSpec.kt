package com.captureprotection

import com.facebook.react.bridge.Promise
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule

abstract class CaptureProtectionSpec(context: ReactApplicationContext) : ReactContextBaseJavaModule(context) {

  abstract fun addListener(eventName: String)
  abstract fun removeListeners(count: Double)
  abstract fun hasListener(promise: Promise)
  abstract fun isScreenRecording(promise: Promise)
  abstract fun prevent(promise: Promise)
  abstract fun allow(promise: Promise)
  abstract fun protectionStatus(promise: Promise)
  abstract fun requestPermission(promise: Promise)
  abstract fun checkPermission(promise: Promise)
}