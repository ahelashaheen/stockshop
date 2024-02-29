import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../signup/domain/entities/UserEntity.dart';
import '../../domain/repositories/login_repo.dart';
import '../data_sources/remote/login_remote_ds.dart';

class LoginRepoImpl implements LoginRepo {
  LoginRemoteDS loginRemoteDS;

  LoginRepoImpl(this.loginRemoteDS);

  @override
  Future<Either<Failures, UserEntity>> login(String email, password) {
    return loginRemoteDS.login(email, password);
  }
}
