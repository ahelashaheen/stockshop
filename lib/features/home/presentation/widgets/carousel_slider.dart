import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/components/open_container.dart';
import '../../../cart screen/presentation/pages/cart_screen.dart';
import '../../domain/entities/CategoryAndBrandEntity.dart';

class CarouselSliderR extends StatelessWidget {
  List<DataEntity> offers;

  CarouselSliderR(this.offers, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: 398.w,
      child: CarouselSlider(
        options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 1.5,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            enlargeFactor: 1,
            viewportFraction: 1),
        items: offers.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return OpenContainers(
                  closedWidget: Container(
                    height: 200.h,
                    width: 398.w,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage(i.image ?? ''),
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
    );
  }
}
