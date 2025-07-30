package com.captureprotection

import com.facebook.react.bridge.Promise

interface CaptureProtectionSpec {

  fun addListener(eventName: String)
  fun removeListeners(count: Double)
  fun hasListener(promise: Promise)
  fun isScreenRecording(promise: Promise)
  fun prevent(promise: Promise)
  fun allow(promise: Promise)
  fun protectionStatus(promise: Promise)
  fun requestPermission(promise: Promise)
  fun checkPermission(promise: Promise)
}