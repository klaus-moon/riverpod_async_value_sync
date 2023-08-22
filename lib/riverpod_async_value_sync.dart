import 'package:riverpod/riverpod.dart';

import 'riverpod_async_value_sync_platform_interface.dart';

class RiverpodAsyncValueSync {
  Future<String?> getPlatformVersion() {
    return RiverpodAsyncValueSyncPlatform.instance.getPlatformVersion();
  }

  static T all<T extends Object>(
    Iterable<AsyncValue> values, {
    required T Function(Iterable<AsyncValue> data) data,
    required T Function(Iterable<AsyncValue> data) error,
    required T Function() loading,
  }) {
    if (values.any((element) => element is AsyncError)) {
      return error(values);
    }

    if (values.any((element) => element is AsyncLoading)) {
      return loading();
    }

    return data(values);
  }
}
