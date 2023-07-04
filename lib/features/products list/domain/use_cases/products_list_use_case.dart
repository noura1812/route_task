import 'package:dartz/dartz.dart';

import 'package:route_task/core/error/failures.dart';
import 'package:route_task/features/products%20list/domain/entities/products_list_entities.dart';
import 'package:route_task/features/products%20list/domain/repositories/products_list_domain_repo.dart';

class ProductsListUseCase {
  ProductsListDomainRepo productsListDomainRepo;
  ProductsListUseCase({
    required this.productsListDomainRepo,
  });
  Future<Either<Failures, ProductsListEntities>> call() =>
      productsListDomainRepo.getProducts();
}
