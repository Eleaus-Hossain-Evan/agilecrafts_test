import 'package:equatable/equatable.dart';
import 'package:flutter_data/flutter_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_model.g.dart';

@JsonSerializable()
@DataRepository([])
class AuthModel extends DataModel<AuthModel> with EquatableMixin {
  final int userId;
  final String accessToken;
  final String encryptedAccessToken;
  final int expireInSeconds;
  final bool shouldResetPassword;
  final String passwordResetCode;
  final bool requiresTwoFactorVerification;
  final String twoFactorAuthProviders;
  final String twoFactorRememberClientToken;
  final String returnUrl;
  final String refreshToken;
  final int refreshTokenExpireInSeconds;

  AuthModel({
    required this.userId,
    required this.accessToken,
    required this.encryptedAccessToken,
    required this.expireInSeconds,
    required this.shouldResetPassword,
    required this.passwordResetCode,
    required this.requiresTwoFactorVerification,
    required this.twoFactorAuthProviders,
    required this.twoFactorRememberClientToken,
    required this.returnUrl,
    required this.refreshToken,
    required this.refreshTokenExpireInSeconds,
  });

  @override
  Object? get id => userId;

  @override
  List<Object> get props {
    return [
      userId,
      accessToken,
      encryptedAccessToken,
      expireInSeconds,
      shouldResetPassword,
      passwordResetCode,
      requiresTwoFactorVerification,
      twoFactorAuthProviders,
      twoFactorRememberClientToken,
      returnUrl,
      refreshToken,
      refreshTokenExpireInSeconds,
    ];
  }
}
