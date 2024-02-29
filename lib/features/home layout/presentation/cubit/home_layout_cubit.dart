import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../category tab/presentation/pages/category_tab.dart';
import '../../../favorite tab/presentation/pages/favorite_tab.dart';
import '../../../home/presentation/pages/home.dart';
import '../../../profile tab/presentation/pages/profile_tab.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeLayoutInitial());

  static HomeLayoutCubit get(context) => BlocProvider.of(context);
  List<Widget> pages = [
    HomeScreen(),
    const CategoryTab(),
    const FavoriteTab(),
    ProfileTab()
  ];

  int currentIndex = 0;
  late PageController pageController;

  void start() {
    pageController = PageController(initialPage: currentIndex);
    emit(HomeLayoutStartState());
  }

  void dispose() {
    emit(HomeLayoutInitial());

    pageController.dispose();
    emit(HomeLayoutdisposeState());
  }

  void changeTab(int index) {
    emit(HomeLayoutInitial());
    currentIndex = index;
    emit(HomeLayoutChangeTabState());
  }
}
