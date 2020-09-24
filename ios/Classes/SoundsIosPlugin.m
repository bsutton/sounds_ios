#import "SoundsIosPlugin.h"
#if __has_include(<sounds_ios/sounds_ios-Swift.h>)
#import <sounds_ios/sounds_ios-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "sounds_ios-Swift.h"
#endif

@implementation SoundsIosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSoundsIosPlugin registerWithRegistrar:registrar];
}
@end
