import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:stockshop/core/utils/observer.dart';
import 'package:stockshop/my_app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
