import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/CategoryAndBrandEntity.dart';
import '../../domain/repositories/home_repo.dart';
import '../data_sources/remote/home_remote_ds_impl.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRemoteDSImpl homeRemoteDSImpl;

  HomeRepoImpl(this.homeRemoteDSImpl);

  @override
  Future<Either<Failures, CategoryAndBrandEntity>> getBrands() {
    return homeRemoteDSImpl.getBrands();
  }

  @override
  Future<Either<Failures, CategoryAndBrandEntity>> getCategories() {
    return homeRemoteDSImpl.getCategories();
  }

  @override
  Future<Either<Failures, CategoryAndBrandEntity>> getOffers() {
    return homeRemoteDSImpl.getOffers();
  }
}
