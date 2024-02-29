part of 'signup_bloc.dart';

enum ScreenStatus { init, loading, success, failure }

@immutable
class SignupState {
  ScreenStatus? status;
  UserEntity? entity;
  Failures? failures;

  SignupState({this.status, this.entity, this.failures});

  SignupState copyWith(
      {ScreenStatus? status, UserEntity? entity, Failures? failures}) {
    return SignupState(
        entity: entity ?? this.entity,
        failures: failures ?? this.failures,
        status: status ?? this.status);
  }
}

class SignupInitial extends SignupState {
  SignupInitial() : super(status: ScreenStatus.init);
}
