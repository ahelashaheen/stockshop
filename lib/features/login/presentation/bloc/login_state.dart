part of 'login_bloc.dart';

@immutable
class LoginState {
  ScreenStatus? status;
  UserEntity? entity;
  Failures? failures;

  LoginState({this.status, this.entity, this.failures});

  LoginState copyWith(
      {ScreenStatus? status, UserEntity? entity, Failures? failures}) {
    return LoginState(
        entity: entity ?? this.entity,
        failures: failures ?? this.failures,
        status: status ?? this.status);
  }
}

class LoginInitial extends LoginState {
  LoginInitial() : super(status: ScreenStatus.init);
}
