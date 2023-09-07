import 'dart:convert';
import 'dart:developer';

import 'package:agilecrafts_test/domain/auth/auth_body.dart';
import 'package:flutter_data/flutter_data.dart';
import 'package:flutter_data/flutter_data.dart';
import 'package:flutter_easylogger/flutter_logger.dart';

mixin AuthAdapter<AuthModelResponse extends DataModel<AuthModelResponse>>
    on RemoteAdapter<AuthModelResponse> {
  @override
  String get baseUrl => 'https://stg-zero.propertyproplus.com.au/api/';

  Future<AuthModelResponse?> authenticate(int tenantId, AuthBody body) async {
    // final appConfig = read(appConfigProvider).instance;

    final payload = body.toMap();

    return sendRequest(
      '${baseUrl}TokenAuth/Authenticate'.asUri,
      method: DataRequestMethod.POST,
      headers: {
        'Content-Type': 'application/json',
        'Abp.TenantId': tenantId.toString()
      },
      body: json.encode(payload),
      onSuccess: (data, label) async {
        Logger.i(data.body.runtimeType);
        final y = await deserialize((data.body as Map<String, dynamic>));
        Logger.i('y: ${y.model}');
        final x = y.model;
        Logger.i('x: $x');
        // ref.read(hiveProvider).put("token", )

        final v = ref.watch(graphNotifierProvider).box;
        Logger.d('v: $v');
        // v.put("token", "")

        return x;
      },
      onError: (e, label) {
        log(e.toString());
        return null;
      },
    );
  }
}
