#ifdef RCT_NEW_ARCH_ENABLED

#pragma once

#include <ReactCommon/TurboModule.h>
#include <react/bridging/Bridging.h>

namespace facebook::react {

/**
 * C++ class for module 'CaptureProtection'
 */
class JSI_EXPORT NativeCaptureProtectionSpecJSI : public TurboModule {
protected:
  NativeCaptureProtectionSpecJSI(std::shared_ptr<CallInvoker> jsInvoker);

public:
  virtual void addListener(jsi::Runtime &rt, jsi::String eventName) = 0;
  virtual void removeListeners(jsi::Runtime &rt, double count) = 0;
  virtual jsi::Value hasListener(jsi::Runtime &rt, const jsi::Object &promise) = 0;
  virtual jsi::Value isScreenRecording(jsi::Runtime &rt, const jsi::Object &promise) = 0;
  virtual jsi::Value allow(jsi::Runtime &rt, const jsi::Object &promise) = 0;
  virtual jsi::Value prevent(jsi::Runtime &rt, const jsi::Object &promise) = 0;
  virtual jsi::Value protectionStatus(jsi::Runtime &rt, const jsi::Object &promise) = 0;
  virtual jsi::Value requestPermission(jsi::Runtime &rt, const jsi::Object &promise) = 0;
  virtual jsi::Value checkPermission(jsi::Runtime &rt, const jsi::Object &promise) = 0;
  virtual jsi::Value allowScreenshot(jsi::Runtime &rt, const jsi::Object &promise) = 0;
  virtual jsi::Value preventScreenshot(jsi::Runtime &rt, const jsi::Object &promise) = 0;
  virtual jsi::Value allowScreenRecord(jsi::Runtime &rt, const jsi::Object &promise) = 0;
  virtual jsi::Value preventScreenRecord(jsi::Runtime &rt, const jsi::Object &promise) = 0;
  virtual jsi::Value preventScreenRecordWithText(jsi::Runtime &rt, jsi::String text, jsi::String textColor, jsi::String backgroundColor, const jsi::Object &promise) = 0;
  virtual jsi::Value preventScreenRecordWithImage(jsi::Runtime &rt, const jsi::Object &image, jsi::String backgroundColor, double contentMode, const jsi::Object &promise) = 0;
  virtual jsi::Value allowAppSwitcher(jsi::Runtime &rt, const jsi::Object &promise) = 0;
  virtual jsi::Value preventAppSwitcher(jsi::Runtime &rt, const jsi::Object &promise) = 0;
  virtual jsi::Value preventAppSwitcherWithText(jsi::Runtime &rt, jsi::String text, jsi::String textColor, jsi::String backgroundColor, const jsi::Object &promise) = 0;
  virtual jsi::Value preventAppSwitcherWithImage(jsi::Runtime &rt, const jsi::Object &image, jsi::String backgroundColor, double contentMode, const jsi::Object &promise) = 0;
};

template <>
struct Bridging<NativeCaptureProtectionSpecJSI> {
  static constexpr auto kModuleName = "CaptureProtection";
};

} // namespace facebook::react

#endif /* RCT_NEW_ARCH_ENABLED */