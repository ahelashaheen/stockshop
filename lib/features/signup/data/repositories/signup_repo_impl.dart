import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/UserEntity.dart';
import '../../domain/repositories/signup_repo.dart';
import '../data_sources/remote/signup_remote_ds.dart';
import '../models/request_paramters.dart';

class SignupRemoImpl implements SignupRepo {
  SignupRemoteDS signupRemoteDS;

  SignupRemoImpl(this.signupRemoteDS);

  @override
  Future<Either<Failures, UserEntity>> signUp(RequestParam requestParam) {
    return signupRemoteDS.signup(requestParam);
  }
}
