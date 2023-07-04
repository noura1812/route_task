import 'package:route_task/features/products%20list/data/data_sources/products_list_data_source.dart';
import 'package:route_task/features/products%20list/data/repositories/products_list_data_repo.dart';
import 'package:route_task/features/products%20list/domain/repositories/products_list_domain_repo.dart';
import 'package:route_task/features/products%20list/domain/use_cases/products_list_use_case.dart';
import 'package:route_task/features/products%20list/presentation/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsListCubit extends Cubit<ProductsListStates> {
  ProductsListDataSource productsListDataSource;
  ProductsListCubit(this.productsListDataSource)
      : super(ProductsListInitState());
  static ProductsListCubit get(context) => BlocProvider.of(context);
  void getProducts() async {
    emit(ProductsListGetDataLoadingState());
    ProductsListDomainRepo productsListDomainRepo =
        ProductsListDataRepo(productsListDataSource: productsListDataSource);
    ProductsListUseCase productsListUseCase =
        ProductsListUseCase(productsListDomainRepo: productsListDomainRepo);
    var result = await productsListUseCase.call();
    result.fold((l) {
      emit(ProductsListGetDataFailureState(failures: l));
    }, (r) {
      emit(ProductsListGetDataSuccessState(productsListEntities: r));
    });
  }
}
