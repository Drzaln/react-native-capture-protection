#ifdef RCT_NEW_ARCH_ENABLED

#import "CaptureProtectionTurboModule.h"
#import "CaptureProtection/CaptureProtection.swift"

@implementation CaptureProtectionTurboModule {
  CaptureProtection *_legacyModule;
}

RCT_EXPORT_MODULE(CaptureProtection)

- (instancetype)init {
  if (self = [super init]) {
    _legacyModule = [[CaptureProtection alloc] init];
  }
  return self;
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const facebook::react::ObjCTurboModule::InitParams &)params {
  return std::make_shared<facebook::react::NativeCaptureProtectionSpecJSI>(params);
}

// Delegate to the legacy implementation
- (NSArray<NSString *> *)supportedEvents {
  return [_legacyModule supportedEvents];
}

- (void)allowScreenshot:(RCTPromiseResolveBlock)resolve
               rejecter:(RCTPromiseRejectBlock)reject {
  [_legacyModule allowScreenshot:resolve rejecter:reject];
}

- (void)preventScreenshot:(RCTPromiseResolveBlock)resolve
                rejecter:(RCTPromiseRejectBlock)reject {
  [_legacyModule preventScreenshot:resolve rejecter:reject];
}

- (void)allowScreenRecord:(RCTPromiseResolveBlock)resolve
                rejecter:(RCTPromiseRejectBlock)reject {
  [_legacyModule allowScreenRecord:resolve rejecter:reject];
}

- (void)preventScreenRecord:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject {
  [_legacyModule preventScreenRecord:resolve rejecter:reject];
}

- (void)preventScreenRecordWithText:(NSString *)text
                          textColor:(NSString *)textColor
                    backgroundColor:(NSString *)backgroundColor
                           resolver:(RCTPromiseResolveBlock)resolve
                           rejecter:(RCTPromiseRejectBlock)reject {
  [_legacyModule preventScreenRecordWithText:text textColor:textColor backgroundColor:backgroundColor resolver:resolve rejecter:reject];
}

- (void)preventScreenRecordWithImage:(NSDictionary *)image
                     backgroundColor:(NSString *)backgroundColor
                         contentMode:(double)contentMode
                            resolver:(RCTPromiseResolveBlock)resolve
                            rejecter:(RCTPromiseRejectBlock)reject {
  [_legacyModule preventScreenRecordWithImage:image backgroundColor:backgroundColor contentMode:contentMode resolver:resolve rejecter:reject];
}

- (void)allowAppSwitcher:(RCTPromiseResolveBlock)resolve
               rejecter:(RCTPromiseRejectBlock)reject {
  [_legacyModule allowAppSwitcher:resolve rejecter:reject];
}

- (void)preventAppSwitcher:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject {
  [_legacyModule preventAppSwitcher:resolve rejecter:reject];
}

- (void)preventAppSwitcherWithText:(NSString *)text
                         textColor:(NSString *)textColor
                   backgroundColor:(NSString *)backgroundColor
                          resolver:(RCTPromiseResolveBlock)resolve
                          rejecter:(RCTPromiseRejectBlock)reject {
  [_legacyModule preventAppSwitcherWithText:text textColor:textColor backgroundColor:backgroundColor resolver:resolve rejecter:reject];
}

- (void)preventAppSwitcherWithImage:(NSDictionary *)image
                    backgroundColor:(NSString *)backgroundColor
                        contentMode:(double)contentMode
                           resolver:(RCTPromiseResolveBlock)resolve
                           rejecter:(RCTPromiseRejectBlock)reject {
  [_legacyModule preventAppSwitcherWithImage:image backgroundColor:backgroundColor contentMode:contentMode resolver:resolve rejecter:reject];
}

- (void)hasListener:(RCTPromiseResolveBlock)resolve
           rejecter:(RCTPromiseRejectBlock)reject {
  [_legacyModule hasListener:resolve rejecter:reject];
}

- (void)protectionStatus:(RCTPromiseResolveBlock)resolve
                rejecter:(RCTPromiseRejectBlock)reject {
  [_legacyModule protectionStatus:resolve rejecter:reject];
}

- (void)isScreenRecording:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject {
  [_legacyModule isScreenRecording:resolve rejecter:reject];
}

- (void)addListener:(NSString *)eventName {
  [_legacyModule addListener:eventName];
}

- (void)removeListeners:(double)count {
  [_legacyModule removeListeners:(NSInteger)count];
}

@end

#endif /* RCT_NEW_ARCH_ENABLED */