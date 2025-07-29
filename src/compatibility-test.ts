import { Platform } from 'react-native';

// Test module architecture detection
export function testArchitectureSupport() {
  try {
    // Test TurboModule availability
    const TurboModuleRegistry = require('react-native').TurboModuleRegistry;
    if (TurboModuleRegistry) {
      console.log('✅ TurboModuleRegistry available - New Architecture supported');
      
      try {
        const NativeCaptureProtection = require('./NativeCaptureProtection').default;
        console.log('✅ TurboModule spec loaded successfully');
        return {
          architecture: 'new',
          supported: true,
          turboModule: !!NativeCaptureProtection
        };
      } catch (error) {
        console.log('⚠️ TurboModule spec failed, falling back to legacy bridge');
        return {
          architecture: 'legacy',
          supported: true,
          error: error.message
        };
      }
    } else {
      console.log('ℹ️ TurboModuleRegistry not available - Legacy architecture');
      return {
        architecture: 'legacy',
        supported: true
      };
    }
  } catch (error) {
    console.error('❌ Architecture detection failed:', error);
    return {
      architecture: 'unknown',
      supported: false,
      error: error.message
    };
  }
}

// Test module loading
export function testModuleLoading() {
  try {
    const { CaptureProtection } = require('./modules');
    
    // Test basic methods are available
    const requiredMethods = [
      'allow', 'prevent', 'protectionStatus', 
      'hasListener', 'isScreenRecording', 
      'addListener', 'removeListener'
    ];
    
    const missingMethods = requiredMethods.filter(method => 
      typeof CaptureProtection[method] !== 'function'
    );
    
    if (missingMethods.length === 0) {
      console.log('✅ All required methods available');
      return {
        success: true,
        methods: requiredMethods
      };
    } else {
      console.log('⚠️ Missing methods:', missingMethods);
      return {
        success: false,
        missingMethods
      };
    }
  } catch (error) {
    console.error('❌ Module loading failed:', error);
    return {
      success: false,
      error: error.message
    };
  }
}

// Export test function for easy verification
export default function runCompatibilityTests() {
  console.log(`Testing React Native Capture Protection on ${Platform.OS}`);
  
  const architectureTest = testArchitectureSupport();
  const moduleTest = testModuleLoading();
  
  return {
    platform: Platform.OS,
    architecture: architectureTest,
    module: moduleTest,
    overall: architectureTest.supported && moduleTest.success
  };
}