import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'riverpod_async_value_sync_method_channel.dart';

abstract class RiverpodAsyncValueSyncPlatform extends PlatformInterface {
  /// Constructs a RiverpodAsyncValueSyncPlatform.
  RiverpodAsyncValueSyncPlatform() : super(token: _token);

  static final Object _token = Object();

  static RiverpodAsyncValueSyncPlatform _instance = MethodChannelRiverpodAsyncValueSync();

  /// The default instance of [RiverpodAsyncValueSyncPlatform] to use.
  ///
  /// Defaults to [MethodChannelRiverpodAsyncValueSync].
  static RiverpodAsyncValueSyncPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RiverpodAsyncValueSyncPlatform] when
  /// they register themselves.
  static set instance(RiverpodAsyncValueSyncPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
