import 'package:dartz/dartz.dart';
import 'package:route_task/core/error/failures.dart';
import 'package:route_task/features/products%20list/data/models/products_list_model.dart';

abstract class ProductsListDataSource {
  Future<Either<Failures, ProductsListModel>> getProductsList();
}
