import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:route_task/core/api/end_points.dart';
import 'package:route_task/core/error/failures.dart';
import 'package:route_task/core/utils/constants.dart';
import 'package:route_task/features/products%20list/data/data_sources/products_list_data_source.dart';
import 'package:route_task/features/products%20list/data/models/products_list_model.dart';

class RemoteDto implements ProductsListDataSource {
  Dio dio = Dio();

  @override
  Future<Either<Failures, ProductsListModel>> getProductsList() async {
    try {
      var response = await dio
          .get('${Constants.baseUrlApi}${EndPoints.getProductsListEndPoint}');
      ProductsListModel productsListModel =
          ProductsListModel.fromJson(response.data);
      return Right(productsListModel);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}
