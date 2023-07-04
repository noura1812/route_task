import 'package:dartz/dartz.dart';
import 'package:route_task/core/error/failures.dart';
import 'package:route_task/features/products%20list/domain/entities/products_list_entities.dart';

abstract class ProductsListDomanRepo {
  Future<Either<Failures, ProductsListEntitie>> getProducts();
}
