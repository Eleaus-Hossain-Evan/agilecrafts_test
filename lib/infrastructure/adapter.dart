import 'package:flutter_data/flutter_data.dart';

mixin JSONServerAdapter<T extends DataModel<T>> on RemoteAdapter<T> {
  @override
  String get baseUrl => 'https://stg-zero.propertyproplus.com.au/api/';
}
