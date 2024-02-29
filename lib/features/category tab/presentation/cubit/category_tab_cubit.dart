import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'category_tab_state.dart';

class CategoryTabCubit extends Cubit<CategoryTabState> {
  CategoryTabCubit() : super(CategoryTabInitial());

  static CategoryTabCubit get(context) => BlocProvider.of(context);
  final TextEditingController searchBarController = TextEditingController();
  bool isFavorite = false;

  void makeFavorite() {
    emit(CategoryTabInitial());
    isFavorite = isFavorite == false ? true : false;
    emit(CategoryFavoriteState());
  }
}
