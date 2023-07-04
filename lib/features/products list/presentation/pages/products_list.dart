import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/utils/app_assets.dart';
import 'package:route_task/core/utils/app_colors.dart';
import 'package:route_task/core/utils/text_styles.dart';
import 'package:route_task/features/products%20list/data/data_sources/remote.dart';
import 'package:route_task/features/products%20list/presentation/cubit/cubit.dart';
import 'package:route_task/features/products%20list/presentation/cubit/states.dart';
import 'package:route_task/features/products%20list/presentation/widgets/product_card.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          ProductsListCubit(RemoteDto())..getProducts(),
      child: BlocConsumer<ProductsListCubit, ProductsListStates>(
        listener: (BuildContext context, state) {
          if (state is ProductsListGetDataFailureState) {
            showDialog(
              context: context,
              builder: (context) => Center(
                  child: AlertDialog(
                title: Image.asset(
                  AppImages.errorImage,
                  height: 100,
                ),
                content: Text(
                  'There was an error, check the internet and try again later',
                  style: poppins20W400(),
                ),
              )),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                leadingWidth: 100.w,
                leading: Row(
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    Image.asset(
                      AppImages.logoAppBar,
                      width: 66.w,
                      height: 22.h,
                    ),
                  ],
                ),
              ),
              body: state is ProductsListGetDataFailureState
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppImages.noInternetImage,
                            height: 200.h,
                            width: 200.w,
                          ),
                          Text(
                            'no internet',
                            style: poppins20W600(),
                          )
                        ],
                      ),
                    )
                  : state is ProductsListGetDataSuccessState
                      ? Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 25.w),
                                    width: 348.w,
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: AppColors.primaryColor),
                                        borderRadius:
                                            BorderRadius.circular(25.r)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const ImageIcon(
                                            AssetImage(AppImages.searchIcon)),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                    'What do you search for?',
                                                hintStyle: poppins14W300()),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 23.w,
                                  ),
                                  ImageIcon(
                                    const AssetImage(
                                        AppImages.shoppingCartIcon),
                                    color: AppColors.primaryColor,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              Expanded(
                                child: GridView.builder(
                                  itemCount: state
                                      .productsListEntities.products!.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 191.w / 241.h,
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 16.w,
                                          mainAxisSpacing: 16.h),
                                  itemBuilder: (context, index) {
                                    return ProductCard(
                                        productsEntities: state
                                            .productsListEntities
                                            .products![index]);
                                  },
                                ),
                              )
                            ],
                          ),
                        )
                      : state is ProductsListGetDataLoadingState
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircularProgressIndicator(
                                    color: AppColors.primaryColor,
                                  ),
                                  Text(
                                    'Loading...',
                                    style: poppins20W400(),
                                  )
                                ],
                              ),
                            )
                          : Container());
        },
      ),
    );
  }
}
