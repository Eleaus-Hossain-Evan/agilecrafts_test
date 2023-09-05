import 'package:agilecrafts_test/domain/auth/auth_response.dart';
import 'package:agilecrafts_test/infrastructure/auth_adapter.dart';
import 'package:agilecrafts_test/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_data/flutter_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'main.data.dart';
import 'presentation/auth_screen.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [configureRepositoryLocalStorage()],
      child: const MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        title: 'Agilecrafts Test',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: Center(
            child: ref.watch(repositoryInitializerProvider).when(
                  error: (error, _) => Text(error.toString()),
                  loading: () => const CircularProgressIndicator(),
                  data: (_) {
                    // final state = ref.authModelResponses
                    //     .watchAll(remote: true, syncLocal: true);
                    // // final state = ref.authModelResponses.watchOneNotifier(
                    // //   ref.authModelResponses,
                    // //   headers: {"Abp.TenantId": "10"},
                    // //   remote: true,
                    // // );

                    // final auth = ref.authModelResponses;

                    // final authState = auth.watchAll();

                    // if (state.isLoading) {
                    //   return const CircularProgressIndicator();
                    // }
                    // if (state.hasException) {
                    //   return const AuthScreen();
                    // }
                    // if (state.hasModel) {
                    //   return const HomeScreen();
                    // }
                    // // if (state.data.) {
                    // //   return Text(state.data.exception!.error.toString());
                    // // }

                    // // return const AuthScreen();

                    return const AuthScreen();
                  },
                ),
          ),
        ),
      ),
    );
  }
}
