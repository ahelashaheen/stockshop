import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:stockshop/core/api/api_manager.dart';
import 'package:stockshop/core/api/endPoints.dart';

import '../../../../../core/errors/failures.dart';
import '../../models/CategoryAndBrandModel.dart';
import 'home_remote_ds.dart';

class HomeRemoteDSImpl implements HomeRemoteDS {
  ApiManager apiManager;

  HomeRemoteDSImpl(this.apiManager);

  @override
  Future<Either<Failures, CategoryAndBrandModel>> getBrands() async {
    try {
      Response response = await apiManager.getData(EndPoints.brands);
      CategoryAndBrandModel model =
          CategoryAndBrandModel.fromJson(response.data);
      return Right(model);
    } catch (e) {
      return Left(RemoteFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failures, CategoryAndBrandModel>> getCategories() async {
    try {
      Response response = await apiManager.getData(EndPoints.categories);
      CategoryAndBrandModel model =
          CategoryAndBrandModel.fromJson(response.data);
      return Right(model);
    } catch (e) {
      return Left(RemoteFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failures, CategoryAndBrandModel>> getOffers() async {
    try {
      Response response = await apiManager.getData(EndPoints.getOffers);
      CategoryAndBrandModel model =
          CategoryAndBrandModel.fromJson(response.data);
      return Right(model);
    } catch (e) {
      return Left(RemoteFailure(message: e.toString()));
    }
  }
}
