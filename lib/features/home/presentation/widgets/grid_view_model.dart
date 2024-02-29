import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';

class GridViewModel {
  GridViewModel({required this.image, required this.title});

  String image;
  String title;
}

List<GridViewModel> ls2 = [
  GridViewModel(image: AppImages.women, title: AppStrings.women),
  GridViewModel(image: AppImages.men, title: AppStrings.men),
  GridViewModel(image: AppImages.laptop, title: AppStrings.electronics),
  GridViewModel(image: AppImages.baby, title: AppStrings.baby),
  GridViewModel(image: AppImages.beauty, title: AppStrings.beauty),
  GridViewModel(image: AppImages.headphone, title: AppStrings.headphones),
  GridViewModel(image: AppImages.care, title: AppStrings.skincare),
  GridViewModel(image: AppImages.camera, title: AppStrings.cameras),
];
