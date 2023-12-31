

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: directives_ordering, top_level_function_literal_block, depend_on_referenced_packages

import 'package:flutter_data/flutter_data.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:path_provider/path_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:agilecrafts_test/domain/auth/auth_response.dart';
import 'package:agilecrafts_test/domain/auth/model/auth_model.dart';
import 'package:agilecrafts_test/domain/product_model.dart';

// ignore: prefer_function_declarations_over_variables
ConfigureRepositoryLocalStorage configureRepositoryLocalStorage = ({FutureFn<String>? baseDirFn, List<int>? encryptionKey, LocalStorageClearStrategy? clear}) {
  if (!kIsWeb) {
    baseDirFn ??= () => getApplicationDocumentsDirectory().then((dir) => dir.path);
  } else {
    baseDirFn ??= () => '';
  }
  
  return hiveLocalStorageProvider.overrideWith(
    (ref) => HiveLocalStorage(
      hive: ref.read(hiveProvider),
      baseDirFn: baseDirFn,
      encryptionKey: encryptionKey,
      clear: clear,
    ),
  );
};

final repositoryProviders = <String, Provider<Repository<DataModelMixin>>>{
  'authModelResponses': authModelResponsesRepositoryProvider,
'authModels': authModelsRepositoryProvider,
'productModels': productModelsRepositoryProvider
};

final repositoryInitializerProvider =
  FutureProvider<RepositoryInitializer>((ref) async {
    DataHelpers.setInternalType<AuthModelResponse>('authModelResponses');
    DataHelpers.setInternalType<AuthModel>('authModels');
    DataHelpers.setInternalType<ProductModel>('productModels');
    final adapters = <String, RemoteAdapter>{'authModelResponses': ref.watch(internalAuthModelResponsesRemoteAdapterProvider), 'authModels': ref.watch(internalAuthModelsRemoteAdapterProvider), 'productModels': ref.watch(internalProductModelsRemoteAdapterProvider)};
    final remotes = <String, bool>{'authModelResponses': true, 'authModels': true, 'productModels': true};

    await ref.watch(graphNotifierProvider).initialize();

    // initialize and register
    for (final type in repositoryProviders.keys) {
      final repository = ref.read(repositoryProviders[type]!);
      repository.dispose();
      await repository.initialize(
        remote: remotes[type],
        adapters: adapters,
      );
      internalRepositories[type] = repository;
    }

    return RepositoryInitializer();
});
extension RepositoryWidgetRefX on WidgetRef {
  Repository<AuthModelResponse> get authModelResponses => watch(authModelResponsesRepositoryProvider)..remoteAdapter.internalWatch = watch;
  Repository<AuthModel> get authModels => watch(authModelsRepositoryProvider)..remoteAdapter.internalWatch = watch;
  Repository<ProductModel> get productModels => watch(productModelsRepositoryProvider)..remoteAdapter.internalWatch = watch;
}

extension RepositoryRefX on Ref {

  Repository<AuthModelResponse> get authModelResponses => watch(authModelResponsesRepositoryProvider)..remoteAdapter.internalWatch = watch as Watcher;
  Repository<AuthModel> get authModels => watch(authModelsRepositoryProvider)..remoteAdapter.internalWatch = watch as Watcher;
  Repository<ProductModel> get productModels => watch(productModelsRepositoryProvider)..remoteAdapter.internalWatch = watch as Watcher;
}