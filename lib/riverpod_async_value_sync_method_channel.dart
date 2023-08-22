import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'riverpod_async_value_sync_platform_interface.dart';

/// An implementation of [RiverpodAsyncValueSyncPlatform] that uses method channels.
class MethodChannelRiverpodAsyncValueSync extends RiverpodAsyncValueSyncPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('riverpod_async_value_sync');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
