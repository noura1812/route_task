import 'package:dartz/dartz.dart';
import 'package:route_task/core/error/failures.dart';
import 'package:route_task/features/products%20list/data/data_sources/products_list_data_source.dart';
import 'package:route_task/features/products%20list/data/models/products_list_model.dart';

class LocalDto implements ProductsListDataSource {
  @override
  Future<Either<Failures, ProductsListModel>> getProductsList() {
    throw UnimplementedError();
  }
}
