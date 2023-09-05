import 'dart:convert';
import 'dart:developer';

import 'package:agilecrafts_test/domain/auth/auth_body.dart';
import 'package:flutter_data/flutter_data.dart';

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
      headers: {'Abp.TenantId': tenantId.toString()},
      body: json.encode(payload),
      onSuccess: (data, label) async {
        log(data.toString());
        return (await deserialize(data)).model;
      },
      onError: (e, label) {
        log(e.toString());
        return null;
      },
    );
  }
}
