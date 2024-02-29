import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/CategoryAndBrandEntity.dart';
import '../repositories/home_repo.dart';

class GetBrandsUseCase {
  HomeRepo repo;

  GetBrandsUseCase(this.repo);

  Future<Either<Failures, CategoryAndBrandEntity>> call() => repo.getBrands();
}
