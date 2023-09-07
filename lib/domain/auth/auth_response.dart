import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_data/flutter_data.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../infrastructure/auth_adapter.dart';
import 'model/auth_model.dart';

part 'auth_response.g.dart';

@JsonSerializable()
@DataRepository([AuthAdapter])
class AuthModelResponse extends DataModel<AuthModelResponse>
    with EquatableMixin {
  final BelongsTo<AuthModel> result;
  @JsonKey(name: "__abp")
  final bool abp;
  AuthModelResponse({
    required this.result,
    required this.abp,
  });

  @override
  Object? get id => result.id;

  @override
  List<Object> get props {
    return [
      result,
      abp,
    ];
  }
}
