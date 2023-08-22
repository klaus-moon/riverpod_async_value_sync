import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_async_value_sync/riverpod_async_value_sync.dart';
import 'package:riverpod_async_value_sync/riverpod_async_value_sync_platform_interface.dart';
import 'package:riverpod_async_value_sync/riverpod_async_value_sync_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockRiverpodAsyncValueSyncPlatform
    with MockPlatformInterfaceMixin
    implements RiverpodAsyncValueSyncPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final RiverpodAsyncValueSyncPlatform initialPlatform = RiverpodAsyncValueSyncPlatform.instance;

  test('$MethodChannelRiverpodAsyncValueSync is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelRiverpodAsyncValueSync>());
  });

  test('getPlatformVersion', () async {
    RiverpodAsyncValueSync riverpodAsyncValueSyncPlugin = RiverpodAsyncValueSync();
    MockRiverpodAsyncValueSyncPlatform fakePlatform = MockRiverpodAsyncValueSyncPlatform();
    RiverpodAsyncValueSyncPlatform.instance = fakePlatform;

    expect(await riverpodAsyncValueSyncPlugin.getPlatformVersion(), '42');
  });
}
