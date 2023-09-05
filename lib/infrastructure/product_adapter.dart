import 'package:flutter_data/flutter_data.dart';

mixin ProductAdapter<ProductModel extends DataModel<ProductModel>>
    on RemoteAdapter<ProductModel> {
  @override
  String get baseUrl => 'https://stg-zero.propertyproplus.com.au/api/';

  @override
  String urlForFindAll(Map<String, dynamic> params) =>
      'services/app/ProductSync/GetAllproduct';
      
}
