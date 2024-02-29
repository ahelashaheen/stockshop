import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/models/request_paramters.dart';
import '../entities/UserEntity.dart';
import '../repositories/signup_repo.dart';

class SignupUseCase {
  SignupRepo signupRepo;

  SignupUseCase(this.signupRepo);

  Future<Either<Failures, UserEntity>> call(RequestParam requestParam) =>
      signupRepo.signUp(requestParam);
}
