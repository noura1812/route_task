// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:route_task/core/error/failures.dart';
import 'package:route_task/features/products%20list/data/data_sources/products_list_data_source.dart';
import 'package:route_task/features/products%20list/domain/entities/products_list_entities.dart';
import 'package:route_task/features/products%20list/domain/repositories/products_list_domain_repo.dart';

class ProductsListDataRepo implements ProductsListDomainRepo {
  ProductsListDataSource productsListDataSource;
  ProductsListDataRepo({
    required this.productsListDataSource,
  });
  @override
  Future<Either<Failures, ProductsListEntities>> getProducts() =>
      productsListDataSource.getProductsList();
}
