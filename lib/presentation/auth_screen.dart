import 'dart:developer';

import 'package:agilecrafts_test/domain/auth/auth_body.dart';
import 'package:agilecrafts_test/domain/auth/auth_response.dart';
import 'package:agilecrafts_test/main.data.dart';
import 'package:agilecrafts_test/presentation/home_screen.dart';
import 'package:agilecrafts_test/presentation/widgets/k_button.dart';
import 'package:agilecrafts_test/presentation/widgets/k_text_form_field.dart';
import 'package:agilecrafts_test/utils/constant/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easylogger/flutter_logger.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthScreen extends HookConsumerWidget {
  static const route = '/';

  const AuthScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final useNameOrEmail = useTextEditingController(text: 'asif');
    final password = useTextEditingController(text: 'password1');

    // final state = ref.authModelResponses;
    // final data = state.watchAll(syncLocal: true, remote: true);

    // ref.watch(authModelResponsesRepositoryProvider).

    return Scaffold(
      appBar: AppBar(
        title: const Text('Authentication'),
      ),
      body: SingleChildScrollView(
        padding: padding16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            gap24,
            KTextFormField2(
              hintText: "User Name Or Email",
              controller: useNameOrEmail,
            ),
            gap32,
            KTextFormField2(
              hintText: "Password",
              controller: password,
            ),
            gap32,
            KFilledButton(
              text: "Authenticate",
              onPressed: () async {
                await ref.authModelResponses.authAdapter
                    .authenticate(
                        10,
                        AuthBody(
                          userNameOrEmailAddress: useNameOrEmail.text,
                          password: password.text,
                        ))
                    .then((value) {
                  Logger.i(value);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

//https://stg-zero.propertyproplus.com.au/api/TokenAuth/Authenticate