import 'package:route_task/core/error/failures.dart';
import 'package:route_task/features/products%20list/domain/entities/products_list_entities.dart';

abstract class ProductsListStates {}

class ProductsListInitState extends ProductsListStates {}

class ProductsListGetDataLoadingState extends ProductsListStates {}

class ProductsListGetDataFailureState extends ProductsListStates {
  Failures failures;
  ProductsListGetDataFailureState({
    required this.failures,
  });
}

class ProductsListGetDataSuccessState extends ProductsListStates {
  ProductsListEntitie productsListEntitie;
  ProductsListGetDataSuccessState({
    required this.productsListEntitie,
  });
}
