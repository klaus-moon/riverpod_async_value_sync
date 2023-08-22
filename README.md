# riverpod_async_value_sync

This plugin provides a method to check if all `AsyncValue` variables from Riverpod are ready for consumption.

## Getting Started

```dart
final valueA = ref.watch(providerA);
final valueB = ref.watch(providerB);

AsyncValue.all(
  [valueA, valueB], 
  data: (values) => values,
  error: (values) => values, # the error callback is called if any `AsyncValue` has an error
  loading: () => 'loading',
);
```

