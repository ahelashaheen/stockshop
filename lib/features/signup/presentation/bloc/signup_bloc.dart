import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/api/api_manager.dart';
import '../../../../core/errors/failures.dart';
import '../../data/data_sources/remote/signup_remote_ds.dart';
import '../../data/data_sources/remote/signup_remote_ds_impl.dart';
import '../../data/models/request_paramters.dart';
import '../../data/repositories/signup_repo_impl.dart';
import '../../domain/entities/UserEntity.dart';
import '../../domain/repositories/signup_repo.dart';
import '../../domain/use_cases/signup_usecase.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  static SignupBloc get(context) => BlocProvider.of(context);

  SignupBloc() : super(SignupInitial()) {
    on<SignupEvent>((event, emit) async {
      if (event is SignupButtonEvent) {
        emit(state.copyWith(status: ScreenStatus.loading));

        ApiManager apiManager = ApiManager();
        SignupRemoteDS signupRemoteDS = SignupRemoteDSImpl(apiManager);
        SignupRepo signupRepo = SignupRemoImpl(
          signupRemoteDS,
        );
        RequestParam requestParam = RequestParam(
            name: "mohamed",
            email: "mohamedhm456@gmail.com",
            password: "123@Mohamed",
            phone: "011111111");
        var useCase = await SignupUseCase(signupRepo)(requestParam);

        useCase.fold((l) {
          emit(state.copyWith(status: ScreenStatus.failure, failures: l));
        }, (r) {
          emit(state.copyWith(status: ScreenStatus.success, entity: r));
        });
      }
    });
  }
}
