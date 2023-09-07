import 'package:agilecrafts_test/domain/auth/auth_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easylogger/flutter_logger.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'appication/initialize_provider.dart';
import 'main.data.dart';
import 'presentation/auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final container = ProviderContainer();

  // final box = container.read(hiveProviderPersonal);
  // await box.init();

  Logger.init(true, isShowFile: false, isShowTime: false);
  runApp(
    ProviderScope(
      parent: container,
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
            child: ref.watch(initializerProvider).when(
                  error: (error, _) => Text(error.toString()),
                  loading: () => const CircularProgressIndicator(),
                  data: (_) {
                    ref.authModelResponses.logLevel = 2;
                    ref.productModels.logLevel = 2;

                    // final state = ref.authModelResponses.watchOneNotifier(
                    //   ref.authModelResponses,
                    //   headers: {"Abp.TenantId": "10"},
                    //   remote: true,
                    // );

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
