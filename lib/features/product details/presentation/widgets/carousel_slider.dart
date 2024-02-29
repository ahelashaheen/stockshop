import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/components/open_container.dart';
import '../../../cart screen/presentation/pages/cart_screen.dart';
import '../../../home/presentation/widgets/carousel_slider_model.dart';

class CarouselSliderProduct extends StatefulWidget {
  const CarouselSliderProduct({super.key});

  @override
  State<CarouselSliderProduct> createState() => _CarouselSliderProductState();
}

class _CarouselSliderProductState extends State<CarouselSliderProduct> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 300.h,
          width: 398.w,
          child: CarouselSlider(
            options: CarouselOptions(
                aspectRatio: 1.5,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                enlargeFactor: 1,
                viewportFraction: 1),
            items: ls.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return OpenContainers(
                      closedWidget: Container(
                        height: 200.h,
                        width: 398.w,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(i.image),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      openedWidget: const CartScreen());
                },
              );
            }).toList(),
          ),
        ),
        Positioned(
            top: 16.h,
            right: 16.w,
            child: InkWell(
              onTap: () {
                isFavorite = isFavorite ? false : true;
                setState(() {});
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: ShapeDecoration(
                  color: AppColors.primary,
                  shape: const OvalBorder(),
                ),
                child: Center(
                    child: ImageIcon(
                  AssetImage(isFavorite ? AppImages.heart : AppImages.favorite),
                  color: AppColors.secondry,
                )),
              ),
            ))
      ],
    );
  }
}
