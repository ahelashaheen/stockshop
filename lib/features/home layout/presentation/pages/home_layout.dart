import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_images.dart';
import '../cubit/home_layout_cubit.dart';
import '../widgets/active_icon.dart';
import '../widgets/not_active_icon.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return HomeLayoutCubit();
      },
      child: BlocConsumer<HomeLayoutCubit, HomeLayoutState>(
        listener: (context, state) {},
        builder: (context, state) {
          final bloc = HomeLayoutCubit.get(context);
          bloc.start();
          return Scaffold(
            body: PageView(
              controller: bloc.pageController,
              children: bloc.pages,
              onPageChanged: (index) {
                bloc.changeTab(index);
              },
            ),
            bottomNavigationBar: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(18.r),
                topLeft: Radius.circular(18.r),
              ),
              child: BottomNavigationBar(
                currentIndex: bloc.currentIndex,
                onTap: (index) {
                  bloc.changeTab(index);
                  bloc.pageController.jumpToPage(index);
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: NotActiveTab(icon: AppImages.home),
                    label: '',
                    activeIcon: ActiveTab(icon: AppImages.home),
                  ),
                  BottomNavigationBarItem(
                    icon: NotActiveTab(icon: AppImages.category),
                    label: '',
                    activeIcon: ActiveTab(icon: AppImages.category),
                  ),
                  BottomNavigationBarItem(
                    icon: NotActiveTab(icon: AppImages.favorite),
                    label: '',
                    activeIcon: ActiveTab(icon: AppImages.favorite),
                  ),
                  BottomNavigationBarItem(
                    icon: NotActiveTab(icon: AppImages.profile),
                    label: '',
                    activeIcon: ActiveTab(icon: AppImages.profile),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
