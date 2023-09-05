// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// RepositoryGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, duplicate_ignore

mixin $AuthModelLocalAdapter on LocalAdapter<AuthModel> {
  static final Map<String, RelationshipMeta> _kAuthModelRelationshipMetas = {};

  @override
  Map<String, RelationshipMeta> get relationshipMetas =>
      _kAuthModelRelationshipMetas;

  @override
  AuthModel deserialize(map) {
    map = transformDeserialize(map);
    return _$AuthModelFromJson(map);
  }

  @override
  Map<String, dynamic> serialize(model, {bool withRelationships = true}) {
    final map = _$AuthModelToJson(model);
    return transformSerialize(map, withRelationships: withRelationships);
  }
}

final _authModelsFinders = <String, dynamic>{};

// ignore: must_be_immutable
class $AuthModelHiveLocalAdapter = HiveLocalAdapter<AuthModel>
    with $AuthModelLocalAdapter;

class $AuthModelRemoteAdapter = RemoteAdapter<AuthModel> with NothingMixin;

final internalAuthModelsRemoteAdapterProvider =
    Provider<RemoteAdapter<AuthModel>>((ref) => $AuthModelRemoteAdapter(
        $AuthModelHiveLocalAdapter(ref), InternalHolder(_authModelsFinders)));

final authModelsRepositoryProvider =
    Provider<Repository<AuthModel>>((ref) => Repository<AuthModel>(ref));

extension AuthModelDataRepositoryX on Repository<AuthModel> {}

extension AuthModelRelationshipGraphNodeX on RelationshipGraphNode<AuthModel> {}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) => AuthModel(
      userId: json['userId'] as int,
      accessToken: json['accessToken'] as String,
      encryptedAccessToken: json['encryptedAccessToken'] as String,
      expireInSeconds: json['expireInSeconds'] as int,
      shouldResetPassword: json['shouldResetPassword'] as bool,
      passwordResetCode: json['passwordResetCode'] as String,
      requiresTwoFactorVerification:
          json['requiresTwoFactorVerification'] as bool,
      twoFactorAuthProviders: json['twoFactorAuthProviders'] as String,
      twoFactorRememberClientToken:
          json['twoFactorRememberClientToken'] as String,
      returnUrl: json['returnUrl'] as String,
      refreshToken: json['refreshToken'] as String,
      refreshTokenExpireInSeconds: json['refreshTokenExpireInSeconds'] as int,
    );

Map<String, dynamic> _$AuthModelToJson(AuthModel instance) => <String, dynamic>{
      'userId': instance.userId,
      'accessToken': instance.accessToken,
      'encryptedAccessToken': instance.encryptedAccessToken,
      'expireInSeconds': instance.expireInSeconds,
      'shouldResetPassword': instance.shouldResetPassword,
      'passwordResetCode': instance.passwordResetCode,
      'requiresTwoFactorVerification': instance.requiresTwoFactorVerification,
      'twoFactorAuthProviders': instance.twoFactorAuthProviders,
      'twoFactorRememberClientToken': instance.twoFactorRememberClientToken,
      'returnUrl': instance.returnUrl,
      'refreshToken': instance.refreshToken,
      'refreshTokenExpireInSeconds': instance.refreshTokenExpireInSeconds,
    };
