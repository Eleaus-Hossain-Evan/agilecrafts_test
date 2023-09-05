// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// RepositoryGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, duplicate_ignore

mixin $ProductModelLocalAdapter on LocalAdapter<ProductModel> {
  static final Map<String, RelationshipMeta> _kProductModelRelationshipMetas =
      {};

  @override
  Map<String, RelationshipMeta> get relationshipMetas =>
      _kProductModelRelationshipMetas;

  @override
  ProductModel deserialize(map) {
    map = transformDeserialize(map);
    return _$ProductModelFromJson(map);
  }

  @override
  Map<String, dynamic> serialize(model, {bool withRelationships = true}) {
    final map = _$ProductModelToJson(model);
    return transformSerialize(map, withRelationships: withRelationships);
  }
}

final _productModelsFinders = <String, dynamic>{};

// ignore: must_be_immutable
class $ProductModelHiveLocalAdapter = HiveLocalAdapter<ProductModel>
    with $ProductModelLocalAdapter;

class $ProductModelRemoteAdapter = RemoteAdapter<ProductModel>
    with ProductAdapter<ProductModel>;

final internalProductModelsRemoteAdapterProvider =
    Provider<RemoteAdapter<ProductModel>>((ref) => $ProductModelRemoteAdapter(
        $ProductModelHiveLocalAdapter(ref),
        InternalHolder(_productModelsFinders)));

final productModelsRepositoryProvider =
    Provider<Repository<ProductModel>>((ref) => Repository<ProductModel>(ref));

extension ProductModelDataRepositoryX on Repository<ProductModel> {
  ProductAdapter<ProductModel> get productAdapter =>
      remoteAdapter as ProductAdapter<ProductModel>;
}

extension ProductModelRelationshipGraphNodeX
    on RelationshipGraphNode<ProductModel> {}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as int?,
      tenantId: json['tenantId'] as int?,
      name: json['name'] as String,
      description: json['description'] as String,
      isAvailable: json['isAvailable'] as bool? ?? false,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'name': instance.name,
      'description': instance.description,
      'isAvailable': instance.isAvailable,
    };
