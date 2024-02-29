import '../../../../core/utils/app_images.dart';

class CarouselSliderModel {
  String image;

  CarouselSliderModel({
    required this.image,
  });
}

final List<CarouselSliderModel> ls = [
  CarouselSliderModel(image: AppImages.clean),
  CarouselSliderModel(image: AppImages.ket),
  CarouselSliderModel(image: AppImages.mak),
];
