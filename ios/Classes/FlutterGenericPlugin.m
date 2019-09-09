#import "FlutterGenericPlugin.h"
#import <flutter_generic_plugin/flutter_generic_plugin-Swift.h>

@implementation FlutterGenericPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterGenericPlugin registerWithRegistrar:registrar];
}
@end
