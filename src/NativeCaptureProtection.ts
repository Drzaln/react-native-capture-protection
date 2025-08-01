import type { TurboModule } from 'react-native';
import { TurboModuleRegistry } from 'react-native';

export interface CaptureProtectionStatus {
  record?: boolean;
  appSwitcher?: boolean; 
  screenshot?: boolean;
}

export interface Spec extends TurboModule {
  // iOS methods - all methods should be present to avoid runtime errors
  allowScreenshot(): Promise<void>;
  preventScreenshot(): Promise<void>;
  allowScreenRecord(): Promise<void>;
  preventScreenRecord(): Promise<void>;
  preventScreenRecordWithText(
    text: string,
    textColor?: string,
    backgroundColor?: string
  ): Promise<void>;
  preventScreenRecordWithImage(
    image: Object,
    backgroundColor?: string,
    contentMode?: number
  ): Promise<void>;
  allowAppSwitcher(): Promise<void>;
  preventAppSwitcher(): Promise<void>;
  preventAppSwitcherWithText(
    text: string,
    textColor?: string,
    backgroundColor?: string
  ): Promise<void>;
  preventAppSwitcherWithImage(
    image: Object,
    backgroundColor?: string,
    contentMode?: number
  ): Promise<void>;
  protectionStatus(): Promise<CaptureProtectionStatus>;

  // Android methods
  allow(): Promise<boolean>;
  prevent(): Promise<boolean>;
  requestPermission(): Promise<boolean>;
  checkPermission(): Promise<boolean>;

  // Common methods
  hasListener(): Promise<boolean>;
  isScreenRecording(): Promise<boolean>;

  // Event emitter methods
  addListener(eventName: string): void;
  removeListeners(count: number): void;
}

export default TurboModuleRegistry.getEnforcing<Spec>('CaptureProtection');