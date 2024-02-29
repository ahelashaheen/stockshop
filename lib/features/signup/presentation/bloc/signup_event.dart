part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class SignupButtonEvent extends SignupEvent {
  RequestParam requestParam;

  SignupButtonEvent(this.requestParam);
}
