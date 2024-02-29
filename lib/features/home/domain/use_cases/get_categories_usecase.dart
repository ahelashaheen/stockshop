import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/CategoryAndBrandEntity.dart';
import '../repositories/home_repo.dart';

class GetCategoriesUseCase {
  HomeRepo repo;

  GetCategoriesUseCase(this.repo);

  Future<Either<Failures, CategoryAndBrandEntity>> call() =>
      repo.getCategories();
}
