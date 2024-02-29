import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'favorite_tab_state.dart';

class FavoriteTabCubit extends Cubit<FavoriteTabState> {
  FavoriteTabCubit() : super(FavoriteTabInitial());

  static FavoriteTabCubit get(context) => BlocProvider.of(context);
  TextEditingController searchBarController = TextEditingController();
  bool isFavorite = false;

  void makeFavorite() {
    emit(FavoriteTabInitial());
    isFavorite = isFavorite == false ? true : false;
    emit(FavoriteTabMakeFavorite());
  }
}
