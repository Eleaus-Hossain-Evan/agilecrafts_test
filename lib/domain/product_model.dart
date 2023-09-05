import 'package:equatable/equatable.dart';
import 'package:flutter_data/flutter_data.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:agilecrafts_test/infrastructure/product_adapter.dart';

part 'product_model.g.dart';

@JsonSerializable()
@DataRepository([ProductAdapter])
class ProductModel extends DataModel<ProductModel> with EquatableMixin {
  @override
  final int? id;
  final int? tenantId;
  final String name;
  final String description;
  final bool isAvailable;

  ProductModel({
    this.id,
    this.tenantId,
    required this.name,
    required this.description,
    this.isAvailable = false,
  });

  @override
  List<Object> get props {
    return [
      id ?? 0,
      tenantId ?? 0,
      name,
      description,
      isAvailable,
    ];
  }

  @override
  String toString() {
    return 'ProductModel(id: $id, tenantId: $tenantId, name: $name, description: $description, isAvailable: $isAvailable)';
  }
}
