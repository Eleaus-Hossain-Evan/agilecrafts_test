// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// RepositoryGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, duplicate_ignore

mixin $AuthModelResponseLocalAdapter on LocalAdapter<AuthModelResponse> {
  static final Map<String, RelationshipMeta>
      _kAuthModelResponseRelationshipMetas = {
    'result': RelationshipMeta<AuthModel>(
      name: 'result',
      type: 'authModels',
      kind: 'BelongsTo',
      instance: (_) => (_ as AuthModelResponse).result,
    )
  };

  @override
  Map<String, RelationshipMeta> get relationshipMetas =>
      _kAuthModelResponseRelationshipMetas;

  @override
  AuthModelResponse deserialize(map) {
    map = transformDeserialize(map);
    return _$AuthModelResponseFromJson(map);
  }

  @override
  Map<String, dynamic> serialize(model, {bool withRelationships = true}) {
    final map = _$AuthModelResponseToJson(model);
    return transformSerialize(map, withRelationships: withRelationships);
  }
}

final _authModelResponsesFinders = <String, dynamic>{};

// ignore: must_be_immutable
class $AuthModelResponseHiveLocalAdapter = HiveLocalAdapter<AuthModelResponse>
    with $AuthModelResponseLocalAdapter;

class $AuthModelResponseRemoteAdapter = RemoteAdapter<AuthModelResponse>
    with AuthAdapter<AuthModelResponse>;

final internalAuthModelResponsesRemoteAdapterProvider =
    Provider<RemoteAdapter<AuthModelResponse>>((ref) =>
        $AuthModelResponseRemoteAdapter($AuthModelResponseHiveLocalAdapter(ref),
            InternalHolder(_authModelResponsesFinders)));

final authModelResponsesRepositoryProvider =
    Provider<Repository<AuthModelResponse>>(
        (ref) => Repository<AuthModelResponse>(ref));

extension AuthModelResponseDataRepositoryX on Repository<AuthModelResponse> {
  AuthAdapter<AuthModelResponse> get authAdapter =>
      remoteAdapter as AuthAdapter<AuthModelResponse>;
}

extension AuthModelResponseRelationshipGraphNodeX
    on RelationshipGraphNode<AuthModelResponse> {
  RelationshipGraphNode<AuthModel> get result {
    final meta = $AuthModelResponseLocalAdapter
            ._kAuthModelResponseRelationshipMetas['result']
        as RelationshipMeta<AuthModel>;
    return meta.clone(
        parent: this is RelationshipMeta ? this as RelationshipMeta : null);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthModelResponse _$AuthModelResponseFromJson(Map<String, dynamic> json) =>
    AuthModelResponse(
      result:
          BelongsTo<AuthModel>.fromJson(json['result'] as Map<String, dynamic>),
      targetUrl: json['targetUrl'] as String,
      success: json['success'] as bool,
      error: json['error'] as String,
      unAuthorizedRequest: json['unAuthorizedRequest'] as bool,
      abp: json['abp'] as bool,
    );

Map<String, dynamic> _$AuthModelResponseToJson(AuthModelResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'targetUrl': instance.targetUrl,
      'success': instance.success,
      'error': instance.error,
      'unAuthorizedRequest': instance.unAuthorizedRequest,
      'abp': instance.abp,
    };
