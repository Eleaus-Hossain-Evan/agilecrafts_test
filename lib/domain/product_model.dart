import 'dart:convert';

import 'package:flutter_data/flutter_data.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:agilecrafts_test/infrastructure/product_adapter.dart';

@JsonSerializable()
@DataRepository([ProductAdapter])
class ProductModel extends DataModel<ProductModel> {
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
}
