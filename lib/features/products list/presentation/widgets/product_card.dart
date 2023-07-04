import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/utils/app_assets.dart';
import 'package:route_task/core/utils/app_colors.dart';
import 'package:route_task/core/utils/functions.dart';
import 'package:route_task/core/utils/text_styles.dart';
import 'package:route_task/features/products%20list/domain/entities/products_list_entities.dart';

class ProductCard extends StatelessWidget {
  final ProductsEntities productsEntities;
  const ProductCard({required this.productsEntities, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17.r),
          border: Border.all(
              color: AppColors.primaryColor.withOpacity(.3), width: 2.w)),
      child: Stack(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.r),
                    topRight: Radius.circular(15.r)),
                child: productsEntities.thumbnail == null
                    ? Image.asset(AppImages.failedTolLadImage)
                    : Image.network(
                        productsEntities.thumbnail!,
                        height: 128.h,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      productsEntities.title!,
                      style: poppins14W400(),
                      maxLines: 1,
                    ),
                    Text(
                      productsEntities.description!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: poppins14W400(),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        Text(
                          currentPriceFormate(productsEntities.price!,
                              productsEntities.discountPercentage!),
                          style: poppins14W400(),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          '${productsEntities.price!} EGP',
                          style: poppins11W400(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Review (${productsEntities.rating?.toStringAsFixed(1)})',
                          style: poppins12W400(),
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.yellowColor,
                          size: 17.h,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 8.w),
            child: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                child: CircleAvatar(
                  radius: 15.r,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Image.asset(AppImages.heartIcon),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 8.w),
            child: Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {},
                child: CircleAvatar(
                  radius: 15.r,
                  backgroundColor: AppColors.primaryColor,
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
