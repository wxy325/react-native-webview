package com.reactnativecommunity.cdwebview

import com.facebook.react.ReactPackage
import com.facebook.react.bridge.ReactApplicationContext


class RNCCDWebViewPackage: ReactPackage {
  override fun createNativeModules(reactContext: ReactApplicationContext) = listOf(
    RNCCDWebViewModule(reactContext)
  )

  override fun createViewManagers(reactContext: ReactApplicationContext) = listOf(
    RNCCDWebViewManager()
  )
}
