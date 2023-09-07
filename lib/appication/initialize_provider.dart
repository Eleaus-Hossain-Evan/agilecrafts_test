import 'package:flutter_data/flutter_data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../main.data.dart';

final initializerProvider = FutureProvider<void>((ref) async {
  // initialize FD
  await ref.container.refresh(repositoryInitializerProvider.future);

  // initialize other services

  // retry offline events
  final sub = ref.listen(offlineRetryProvider, (_, __) {});

  // close offline retry subscription
  ref.onDispose(() {
    sub.close();
  });
});
