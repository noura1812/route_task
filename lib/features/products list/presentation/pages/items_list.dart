import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/features/products%20list/data/datasources/remot.dart';
import 'package:route_task/features/products%20list/presentation/cubit/cubit.dart';
import 'package:route_task/features/products%20list/presentation/cubit/states.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          ProductsListCubit(RemotDto())..getProducts(),
      child: BlocConsumer<ProductsListCubit, ProductsListStates>(
        listener: (BuildContext context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: state is ProductsListGetDataSuccessState
                  ? Text(state.productsListEntitie.products!.length.toString())
                  : state is ProductsListGetDataFailureState
                      ? Text(state.failures.message)
                      : const Text('loading...'),
            ),
          );
        },
      ),
    );
  }
}
